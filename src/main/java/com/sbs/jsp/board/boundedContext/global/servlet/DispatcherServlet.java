package com.sbs.jsp.board.boundedContext.global.servlet;

import com.sbs.jsp.board.boundedContext.article.controller.ArticleController;
import com.sbs.jsp.board.boundedContext.global.base.Rq;
import com.sbs.jsp.board.boundedContext.global.base.container.Container;
import com.sbs.jsp.board.boundedContext.member.controller.MemberController;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

// usr로 시작하는 모든 요청
@WebServlet("/usr/*")
public class DispatcherServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    Rq rq = new Rq(req, resp);

    MemberController memberController = Container.memberController;
    ArticleController articleController = Container.articleController;

    switch (rq.getMethod()) {
      case "GET":
        switch (rq.getActionPath()) {
          case "/usr/article/write" -> articleController.showWrite(rq);
          case "/usr/article/list" -> articleController.showList(rq);
          case "/usr/article/detail" -> articleController.showDetail(rq);
          case "/usr/article/modify" -> articleController.showModify(rq);
          case "/usr/member/join" -> memberController.showJoin(rq);
        }
      case "POST":
        switch (rq.getActionPath()) {
          case "/usr/article/write" -> articleController.doWrite(rq);
          case "/usr/article/modify" -> articleController.doModify(rq);
        }
    }
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    doGet(req, resp);
  }
}
