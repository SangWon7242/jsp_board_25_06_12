package com.sbs.jsp.board.boundedContext.gugudan;

import com.sbs.jsp.board.boundedContext.global.base.Rq;
import com.sbs.jsp.board.boundedContext.home.HomeServlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/gugudan")
public class GugudanServlet extends HomeServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    Rq rq = new Rq(req, resp);

    int dan = rq.getIntParam("dan", 9);
    int limit = rq.getIntParam("limit", 9);
    rq.appendBody("<h1>== %d단 ==</h1>\n".formatted(dan));

    for(int i = 1; i <= limit; i++) {
      rq.appendBody("<div>%d * %d = %d</div>\n".formatted(dan, i, dan * i));
    }

    rq.appendBody("""
        <div class="box-1"></div>
        
        <style>
          .box-1 { width: 200px; height: 200px; background-color: red; }
        </style>
        """);
  }
}
