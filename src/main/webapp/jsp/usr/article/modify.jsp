<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<c:set var="pageTitle" value="JSP 게시물 수정" />

<%@ include file="../../common/head.jspf" %>

<div class="container">
  <h1 class="flex gap-x-3 items-center justify-center">
    <span>${article.id}번</span>
    <span>게시물 수정</span>
  </h1>

  <form method="POST" onsubmit="ArticleSave_submitForm(this); return false;">
    <div>
      <label for="subject">제목</label>
      <input type="text" id="subject" name="subject" placeholder="제목을 입력해주세요." value="${article.subject}">
    </div>
    <div>
      <label for="content">내용</label>
      <textarea id="content" name="content" placeholder="내용을입력해주세요.">${article.content}</textarea>
    </div>
    <div class="button-group">
      <button type="submit">수정</button>
      <a href="/usr/article/list">취소</a>
    </div>
  </form>
</div>

<%@ include file="../../common/foot.jspf" %>