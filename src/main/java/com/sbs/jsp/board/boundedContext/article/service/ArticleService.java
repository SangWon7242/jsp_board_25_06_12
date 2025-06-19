package com.sbs.jsp.board.boundedContext.article.service;

import com.sbs.jsp.board.boundedContext.article.dto.Article;
import com.sbs.jsp.board.boundedContext.article.repository.ArticleRepository;
import com.sbs.jsp.board.boundedContext.global.base.container.Container;

import java.util.List;

public class ArticleService {
  private ArticleRepository articleRepository;

  public ArticleService() {
    articleRepository = Container.articleRepository;
  }

  public long write(String subject, String content) {
    return articleRepository.write(subject, content);
  }

  public List<Article> findAll() {
    return articleRepository.findAll();
  }
}
