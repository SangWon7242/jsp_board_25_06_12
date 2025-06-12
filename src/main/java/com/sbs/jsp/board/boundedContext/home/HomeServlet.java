package com.sbs.jsp.board.boundedContext.home;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/home")
public class HomeServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    req.setCharacterEncoding("UTF-8"); // 들어오는 데이터를 UTF-8로 해석
    resp.setCharacterEncoding("UTF-8"); // 완성된 HTML 결과물의 인코딩을 UTF-8로 하겠다.
    resp.setContentType("text/html; charset=utf-8");

    resp.getWriter().append("안녕하세요. 반갑습니다.");
  }
}
