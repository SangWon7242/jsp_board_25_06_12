<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Jakarta EE 9+ 새로운 방식 -->
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<c:set var="pageTitle" value="JSP 게시물 상세보기" />

<%@ include file="../../common/head.jspf" %>

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