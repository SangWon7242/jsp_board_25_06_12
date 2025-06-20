<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<c:set var="pageTitle" value="JSP 게시물 작성" />

<%@ include file="../../common/head.jspf" %>

<div class="container">
  <h1>게시물 작성</h1>

  <form method="POST" onsubmit="ArticleSave_submitForm(this); return false;">
    <div>
      <label for="subject">제목</label>
      <input type="text" id="subject" name="subject" placeholder="제목을 입력해주세요.">
    </div>
    <div>
      <label for="content">내용</label>
      <textarea id="content" name="content" placeholder="내용을입력해주세요."></textarea>
    </div>
    <div class="button-group">
      <button type="submit">작성</button>
    </div>
  </form>
</div>

<%@ include file="../../common/foot.jspf" %>