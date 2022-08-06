package com.ll.exam.article.controller;

import com.ll.exam.Rq;
import com.ll.exam.annotation.Autowired;
import com.ll.exam.annotation.Controller;
import com.ll.exam.annotation.GetMapping;
import com.ll.exam.article.dto.ArticleDto;
import com.ll.exam.article.service.ArticleService;

import java.util.List;

// ArticleController 가 컨트롤러 이다.
// 아래 ArticleController 클래스는 Controller 이다.
@Controller
public class ArticleController {
    @Autowired
    private ArticleService articleService;

    @GetMapping("/usr/article/list")
    public void showList(Rq rq) {
        List<ArticleDto> articleDtos = articleService.getArticles();

        rq.setAttr("articles", articleDtos);
        rq.view("usr/article/list");
    }
    @GetMapping("/usr/article/write")
    public void showWrite(Rq rq) {
        rq.view("usr/article/write");
    }

}
