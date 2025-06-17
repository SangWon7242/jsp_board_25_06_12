package com.sbs.jsp.board.boundedContext.article.controller;

import com.sbs.jsp.board.boundedContext.article.dto.Article;
import com.sbs.jsp.board.boundedContext.global.base.Rq;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.IntStream;

public class ArticleController {
  private List<Article> articleList;

  public ArticleController() {
    articleList = new ArrayList<>();

    makeTestData();
  }

  private void makeTestData() {
    IntStream.rangeClosed(1, 5)
        .forEach(i -> articleList.add(new Article(i, "제목" + i, "내용" + i)));
  }

  public void showWrite(Rq rq) {
    rq.view("usr/article/write");
  }

  public void showList(Rq rq) {
    // 원본을 기반으로 복사본을 만들어 연결
    List<Article> articles = new ArrayList<>(articleList);

    Collections.reverse(articles);

    rq.setAttr("articles", articles);

    rq.view("usr/article/list");
  }
}
