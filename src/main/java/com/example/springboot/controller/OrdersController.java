package com.example.springboot.controller;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.RandomUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.springboot.common.Result;
import com.example.springboot.config.interceptor.AuthAccess;
import com.example.springboot.entity.*;
import com.example.springboot.service.IAddressService;
import com.example.springboot.service.ICartService;
import com.example.springboot.service.IGoodsService;
import com.example.springboot.service.IOrdersService;
import com.example.springboot.utils.TokenUtils;
import jakarta.annotation.Resource;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * <p>
 * 前端控制器
 * </p>
 */
@RestController
@RequestMapping("/orders")
public class OrdersController {

    @Resource
    private IOrdersService ordersService;
    @Resource
    private IGoodsService goodsService;
    @Resource
    private IAddressService addressService;
    @Resource
    private ICartService cartService;

    @PostMapping
    @Transactional
    public Result save(@RequestBody Orders orders) {// 仅处理新增订单
        if (orders.getId() == null) {
            // 根据商品ID查询商品信息
            Goods goods = goodsService.getById(orders.getGoodsId());
            if (goods.getInventory()-orders.getNum()<0){// 检查库存是否充足（库存 - 购买数量 < 0）
                return Result.error("605","库存不足，无法下单！");
            }
            // 生成唯一订单号（格式：yyyyMMddHHmmss+6位随机数）
            orders.setNo(DateUtil.format(new Date(), "yyyyMMddHHmmss") + RandomUtil.randomNumbers(6));
            orders.setUserId(TokenUtils.getCurrentUser().getId()); // 设置当前登录用户ID
            // 设置商品基础信息
            orders.setName(goods.getName());
            // 计算订单总金额（数量 * 单价）
            orders.setPrice(new BigDecimal(orders.getNum()).multiply(goods.getPrice()));
            orders.setTime(DateUtil.now());// 设置订单创建时间
            orders.setImg(goods.getImg());
            orders.setStatus("待支付");// 设置订单状态（默认为"待支付"）
            // 根据地址ID查询收货地址
            Address address = addressService.getById(orders.getAddressId());
            orders.setUserName(address.getName());
            orders.setUserAddress(address.getAddress());
            orders.setUserPhone(address.getPhone());
            // 更新商品库存
            goods.setInventory(goods.getInventory()-orders.getNum());
            goods.setSales(goods.getSales()+orders.getNum());
            goodsService.updateById(goods);// 保存商品更新
        }
        // 返回订单保存结果
        return Result.success(ordersService.saveOrUpdate(orders));
    }

    @PostMapping("/fromCart/{addressId}")
    @Transactional
    public Result fromCart(@RequestBody List<Cart> carts, @PathVariable Integer addressId) {
        for (Cart cart : carts) {
            // 创建订单逻辑

            Orders order = new Orders();
            order.setGoodsId(cart.getGoodsId());
            order.setNum(cart.getNum());
            order.setUserId(TokenUtils.getCurrentUser().getId());
            order.setTime(DateUtil.now());
            Goods goods = goodsService.getById(cart.getGoodsId());
            // 检查库存
            if (goods.getInventory() - order.getNum() < 0) {
                return Result.error("605","商品库存不足");
            }
            goods.setInventory(goods.getInventory()-order.getNum());
            goods.setSales(goods.getSales()+order.getNum());
            goodsService.updateById(goods);
            order.setImg(goods.getImg());
            order.setName(goods.getName());
            order.setPrice(new BigDecimal(cart.getNum()).multiply(goods.getPrice()));;
            order.setStatus("待支付");
            order.setUnitId(goods.getUnitId());
            Address address = addressService.getById(addressId);
            order.setNo(DateUtil.format(new Date(), "yyyyMMddHHmmss") + RandomUtil.randomNumbers(6));
            order.setUserName(address.getName());
            order.setUserPhone(address.getPhone());
            order.setUserAddress(address.getAddress());
            ordersService.save(order);
            cartService.removeById(cart);
        }
        return Result.success();
    }

    @GetMapping("/back/{id}")
    public Result back(@PathVariable Integer id) {
        // 根据订单ID查询订单
        Orders orders = ordersService.getById(id);
        orders.setStatus("待退款");// 更新状态为"待退款"
        ordersService.updateById(orders);// 保存订单状态变更
        return Result.success();
    }

    @GetMapping("/ok/{id}")
    public Result ok(@PathVariable Integer id) {
        Orders orders = ordersService.getById(id);
        orders.setStatus("已退款"); // 更新状态为"已退款"
        ordersService.updateById(orders);
        return Result.success();
    }

    @GetMapping("/no/{id}")
    public Result no(@PathVariable Integer id) {
        Orders orders = ordersService.getById(id);
        orders.setStatus("待评价"); // 更新状态为"待评价"
        ordersService.updateById(orders);
        return Result.success();
    }

    @GetMapping("/pay/{id}")
    public Result pay(@PathVariable Integer id) {
        Orders orders = ordersService.getById(id);
        orders.setStatus("待发货");
        ordersService.updateById(orders);
        return Result.success();
    }

    @GetMapping("/cancel/{id}")
    @Transactional
    public Result cancel(@PathVariable Integer id) {
        // 根据订单ID查询订单信息
        Orders orders = ordersService.getById(id);
        orders.setStatus("已取消");// 更新订单状态为"已取消"
        // 根据订单关联的商品ID查询商品信息
        Goods goods = goodsService.getById(orders.getGoodsId());
        // 恢复商品库存
        goods.setInventory(goods.getInventory()+orders.getNum());
        goodsService.updateById(goods);// 更新商品库存信息
        ordersService.updateById(orders);// 更新订单状态
        return Result.success();// 返回成功响应
    }

    @GetMapping("/send/{id}")
    public Result send(@PathVariable Integer id) {
        Orders orders = ordersService.getById(id);
        orders.setStatus("待收货");
        ordersService.updateById(orders);
        return Result.success();
    }

    @GetMapping("/delivery/{id}")
    public Result delivery(@PathVariable Integer id) {
        Orders orders = ordersService.getById(id);
        orders.setStatus("待评价");
        ordersService.updateById(orders);
        return Result.success();
    }

    @AuthAccess
    @GetMapping("/goodComment/{id}")
    public Result findGoodComment(@PathVariable Integer id) {
        LambdaQueryWrapper<Orders> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(Orders::getGoodsId,id);
        wrapper.eq(Orders::getStatus,"已完成");
        return Result.success(ordersService.list(wrapper));
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Integer id) {
        return Result.success(ordersService.removeById(id));
    }

    @PostMapping("/del/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
        return Result.success(ordersService.removeByIds(ids));
    }

    @GetMapping
    public Result findAll() {
        return Result.success(ordersService.list());
    }

    @GetMapping("/{id}")
    public Result findOne(@PathVariable Integer id) {
        return Result.success(ordersService.getById(id));
    }

    @GetMapping("/front/page")
    public Result findFrontPage(@RequestParam(defaultValue = "") String keyword,
                                @RequestParam(defaultValue = "") String activeTab,
                                @RequestParam Integer pageNum,
                                @RequestParam Integer pageSize) {
        // 创建LambdaQueryWrapper，设置排序（按订单ID倒序）和用户条件
        LambdaQueryWrapper<Orders> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.orderByDesc(Orders::getId);
        queryWrapper.eq(Orders::getUserId, TokenUtils.getCurrentUser().getId());
        // 添加关键词搜索条件
        if (StrUtil.isNotBlank(keyword)) {
            queryWrapper.like(Orders::getName, keyword);
        }
        // 根据 activeTab 过滤状态
        if (!StrUtil.equals(activeTab,"所有订单")){
            queryWrapper.eq(Orders::getStatus,activeTab);
        }
        // 执行分页查询并返回结果
        return Result.success(ordersService.page(new Page<>(pageNum, pageSize), queryWrapper));
    }

    @GetMapping("/page")
    public Result findPage(@RequestParam Integer pageNum,
                           @RequestParam Integer pageSize,
                           @RequestParam(defaultValue = "") String keyword) {

        LambdaQueryWrapper<Orders> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.orderByDesc(Orders::getId);

        if (StrUtil.isNotBlank(keyword)) {
            queryWrapper.like(Orders::getNo, keyword);
        }

        Account account = TokenUtils.getCurrentUser();
        //不是管理员的话，只显示商家自己的信息
        if (!StrUtil.equals(account.getRole(),"ROLE_ADMIN")){
            queryWrapper.eq(Orders::getUnitId,account.getId());
        }

        return Result.success(ordersService.page(new Page<>(pageNum, pageSize), queryWrapper));
    }

}

