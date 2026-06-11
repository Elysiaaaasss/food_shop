package com.example.springboot.controller;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.springboot.common.Result;
import com.example.springboot.config.interceptor.AuthAccess;
import com.example.springboot.entity.Article;
import com.example.springboot.service.IArticleService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 * 前端控制器
 * </p>
 */
@RestController
@RequestMapping("/article")
public class ArticleController {

    @Resource
    private IArticleService articleService;

    @PostMapping
    public Result save(@RequestBody Article article) {
        if (article.getId() == null) {// 新增文章时自动设置当前时间
            article.setTime(DateUtil.now());
        }
        return Result.success(articleService.saveOrUpdate(article));// 调用服务层保存或更新文章
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Integer id) {
        return Result.success(articleService.removeById(id));
    }

    @PostMapping("/del/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
        return Result.success(articleService.removeByIds(ids));
    }

    @AuthAccess
    @GetMapping
    public Result findAll() {
        return Result.success(articleService.list());
    }

    @AuthAccess
    @GetMapping("/{id}")
    public Result findOne(@PathVariable Integer id) {
        return Result.success(articleService.getById(id));
    }

    @GetMapping("/page")
    public Result findPage(@RequestParam Integer pageNum,
                           @RequestParam Integer pageSize,
                           @RequestParam(defaultValue = "") String keyword) {

        LambdaQueryWrapper<Article> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.orderByDesc(Article::getId);

        if (StrUtil.isNotBlank(keyword)) {
            queryWrapper.like(Article::getName, keyword);
        }

        return Result.success(articleService.page(new Page<>(pageNum, pageSize), queryWrapper));
    }

    @AuthAccess
    @GetMapping("/front/page")
    public Result findFrontPage(@RequestParam Integer pageNum,
                           @RequestParam Integer pageSize,
                           @RequestParam(defaultValue = "") String type,
                           @RequestParam(defaultValue = "") String keyword) {

        LambdaQueryWrapper<Article> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.orderByDesc(Article::getId);

        if (StrUtil.isNotBlank(keyword)) {
            queryWrapper.like(Article::getName, keyword);
        }

        if (!StrUtil.equals("",type)){
            queryWrapper.eq(Article::getType,type);
        }

        return Result.success(articleService.page(new Page<>(pageNum, pageSize), queryWrapper));
    }

}

