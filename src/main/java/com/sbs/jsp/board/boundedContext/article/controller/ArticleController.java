package com.sbs.jsp.board.boundedContext.article.controller;

import com.sbs.jsp.board.boundedContext.article.dto.Article;
import com.sbs.jsp.board.boundedContext.global.base.Rq;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.IntStream;

public class ArticleController {
  private List<Article> articleList;
  private long lastId;

  public ArticleController() {
    articleList = new ArrayList<>();

    makeTestData();
    
    // getLast() : 전체 리스트에서 -1한 리스트 요소값을 가져옴
    lastId = articleList.getLast().getId();
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

  public void doWrite(Rq rq) {
    String subject = rq.getParam("subject", "");

    if(subject.trim().isEmpty()) {
      rq.appendBody("""
                    <script>
                     alert("제목을 입력해주세요.");
                    </script>
                    """);
      return;
    }

    String content = rq.getParam("content", "");
    if(content.trim().isEmpty()) {
      rq.appendBody("""
                    <script>
                     alert("내용을 입력해주세요.");
                    </script>
                    """);
      return;
    }

    long id = ++lastId;

    Article article = new Article(id, subject, content);
    articleList.add(article);

    rq.appendBody("""
                  <div>%d번 게시물 생성</div>
                  <div>subject : %s</div>
                  <div>content : %s</div>
                  """.formatted(id, subject, content));
  }
}
