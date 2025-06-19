<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Jakarta EE 9+ 새로운 방식 -->
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ include file="../../common/head.jspf" %>

<style>
  body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #f8f9fa;
      margin: 0;
      padding: 40px;
  }

  .container {
      max-width: 700px;
      margin: 0 auto;
      background-color: #fff;
      border-radius: 12px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
      padding: 30px 40px;
  }

  h1 {
      font-size: 28px;
      margin-bottom: 30px;
      text-align: center;
      color: #333;
  }

  .item {
      margin-bottom: 20px;
  }

  .item label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
      color: #555;
  }

  .item .value {
      font-size: 16px;
      color: #222;
      background-color: #f1f3f5;
      padding: 10px 15px;
      border-radius: 6px;
  }

  .btn-back {
      display: inline-block;
      margin-top: 30px;
      padding: 10px 20px;
      background-color: #4a90e2;
      color: #fff;
      text-decoration: none;
      border-radius: 6px;
      transition: background-color 0.3s;
  }

  .btn-back:hover {
      background-color: #357ab8;
  }
</style>


<div class="container">
  <h1>게시물 상세보기</h1>

  <div class="item">
    <label>번호</label>
    <div class="value">${article.id}</div>
  </div>

  <div class="item">
    <label>제목</label>
    <div class="value">${article.subject}</div>
  </div>

  <div class="item">
    <label>내용</label>
    <div class="value" style="white-space: pre-line;">${article.content}</div>
  </div>

  <div class="button-group">
    <a href="/usr/article/list">리스트로 이동</a>
  </div>
</div>

<%@ include file="../../common/foot.jspf" %>