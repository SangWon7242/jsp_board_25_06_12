package com.sbs.jsp.board.boundedContext.gugudan;

import com.sbs.jsp.board.boundedContext.global.base.Rq;
import com.sbs.jsp.board.boundedContext.home.HomeServlet;
import jakarta.servlet.RequestDispatcher;
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

    // setAttribute : key, value 형태로 인자값을 넘김
    req.setAttribute("dan", dan);
    req.setAttribute("limit", limit);
    
    // JSP한테 요청을 보냄
    RequestDispatcher requestDispatcher = req.getRequestDispatcher("/jsp/gugudan2.jsp");
    requestDispatcher.forward(req, resp);
  }
}
