package com.example.springboot.service.impl;

import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.example.springboot.common.Constants;
import com.example.springboot.entity.Account;
import com.example.springboot.entity.User;
import com.example.springboot.mapper.UserMapper;
import com.example.springboot.service.IUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.springboot.exception.ServiceException;
import com.example.springboot.utils.TokenUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import jakarta.annotation.Resource;

/**
 * <p>
 *  服务实现类
 * </p>
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public Account login(Account account) {
        // 使用MyBatis Plus LambdaQueryWrapper进行用户名+密码的精确查询
        User one = getOne(Wrappers.<User>lambdaQuery().eq(User::getUsername, account.getUsername()).eq(User::getPassword, account.getPassword()));
        if (one != null) { // 验证用户是否存在
            String role = "ROLE_USER"; // 设置默认角色
            BeanUtils.copyProperties(one,account);// 将User对象属性复制到Account对象
            // 生成JWT令牌
            String token = TokenUtils.createToken( one.getId() + "-" + role, account.getPassword());
            // 设置令牌和角色到返回对象
            account.setToken(token);
            account.setRole(role);
            account.setPassword(null);// 敏感信息处理：清除返回的密码
            return account;
        } else { // 用户名或密码错误，抛出业务异常（错误码605）
            throw new ServiceException(Constants.CODE_605, "用户名或密码错误");
        }
    }

    @Override
    public void register(Account account) {
        // 根据用户名查询用户，使用MyBatis Plus的LambdaQueryWrapper进行条件查询
        User one = getOne(Wrappers.<User>lambdaQuery().eq(User::getUsername, account.getUsername()));
        if (one == null) {// 创建新用户对象
            one = new User();
            BeanUtils.copyProperties(account, one); // 将Account对象属性复制到User对象
            save(one);  // 保存新用户到数据库
        } else { // 用户名已存在，抛出业务异常（错误码605，提示"用户已存在"）
            throw new ServiceException(Constants.CODE_605, "用户已存在");
        }
    }

    @Override
    public void updatePassword(Account account) {
        LambdaUpdateWrapper<User> wrapper = new LambdaUpdateWrapper<>();
        wrapper.eq(User::getUsername, account.getUsername());
        wrapper.eq(User::getPassword, account.getPassword());
        wrapper.set(User::getPassword, account.getNewPassword());
        // 执行更新操作
        int updateCount = userMapper.update(null, wrapper);
        // 检查更新结果
        if (updateCount == 0) {
            throw new ServiceException(Constants.CODE_605, "原密码输入错误，请检查后再试！");
        }
    }

}
