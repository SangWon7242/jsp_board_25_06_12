package com.sbs.jsp.board.boundedContext.article.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
public class Article {
  private final long id;
  private String subject;
  private String content;
}
