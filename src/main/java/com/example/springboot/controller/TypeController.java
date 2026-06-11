package com.example.springboot.controller;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.springboot.common.Result;
import com.example.springboot.config.interceptor.AuthAccess;
import com.example.springboot.entity.Goods;
import com.example.springboot.entity.Type;
import com.example.springboot.service.IGoodsService;
import com.example.springboot.service.ITypeService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * <p>
 * 前端控制器
 * </p>
 */
@RestController
@RequestMapping("/type")
public class TypeController {

    @Resource
    private ITypeService typeService;
    @Resource
    private IGoodsService goodsService;

    @PostMapping
    public Result save(@RequestBody Type type) {
        return Result.success(typeService.saveOrUpdate(type));
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Integer id) {
        return Result.success(typeService.removeById(id));
    }

    @PostMapping("/del/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
        return Result.success(typeService.removeByIds(ids));
    }

    @AuthAccess
    @GetMapping("/front")
    public Result findFront() {
        return Result.success(typeService.list().stream().limit(6).collect(Collectors.toList()));
    }

    @AuthAccess
    @GetMapping("/praise")
    public Result findPraise() {
        LambdaQueryWrapper<Type> wrapper = new LambdaQueryWrapper<>();
        // 所有推荐的分类
        wrapper.eq(Type::getStatus, true);
        List<Type> typeList = typeService.list(wrapper);
        // 提取分类 ID
        List<Integer> typeIds = typeList.stream().map(Type::getId).collect(Collectors.toList());
        // 查询分类下上架商品
        LambdaQueryWrapper<Goods> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Goods::getStatus,true);
        queryWrapper.in(Goods::getTypeId, typeIds);
        Map<Integer, List<Goods>> map = goodsService.list(queryWrapper).stream().collect(Collectors.groupingBy(Goods::getTypeId));
        for (Type type : typeList) {
            if (map.containsKey(type.getId())){
                type.setGoodsList(map.get(type.getId()).stream().limit(4).collect(Collectors.toList()));
            }else {
                type.setGoodsList(new ArrayList<>());
            }
        }
        return Result.success(typeList);
    }

    @AuthAccess
    @GetMapping
    public Result findAll() {
        return Result.success(typeService.list());
    }

    @AuthAccess
    @GetMapping("/{id}")
    public Result findOne(@PathVariable Integer id) {
        return Result.success(typeService.getById(id));
    }

    @GetMapping("/page")
    public Result findPage(@RequestParam Integer pageNum,
                           @RequestParam Integer pageSize,
                           @RequestParam(defaultValue = "") String keyword) {

        LambdaQueryWrapper<Type> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.orderByDesc(Type::getId);

        if (StrUtil.isNotBlank(keyword)) {
            queryWrapper.like(Type::getName, keyword);
        }

        return Result.success(typeService.page(new Page<>(pageNum, pageSize), queryWrapper));
    }

}

