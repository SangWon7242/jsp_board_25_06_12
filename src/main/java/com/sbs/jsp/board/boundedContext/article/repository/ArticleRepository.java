package com.sbs.jsp.board.boundedContext.article.repository;

import com.sbs.jsp.board.boundedContext.article.dto.Article;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.IntStream;

public class ArticleRepository {
  private List<Article> articleList;
  private long lastId;

  public ArticleRepository() {
    articleList = new ArrayList<>();

    makeTestData();

    // getLast() : 전체 리스트에서 -1한 리스트 요소값을 가져옴
    lastId = articleList.getLast().getId();
  }

  private void makeTestData() {
    IntStream.rangeClosed(1, 5)
        .forEach(i -> articleList.add(new Article(i, "제목" + i, "내용" + i)));
  }

  public long write(String subject, String content) {
    long id = ++lastId;

    Article article = new Article(id, subject, content);
    articleList.add(article);

    return id;
  }

  public List<Article> findAll() {
    List<Article> articles = new ArrayList<>(articleList);

    Collections.reverse(articles);

    return articles;
  }
}
