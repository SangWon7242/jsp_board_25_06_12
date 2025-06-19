<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Jakarta EE 9+ 새로운 방식 -->
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<h1>게시물 상세보기</h1>

<div>번호 : ${article.id}</div>
<div>제목 : ${article.subject}</div>
<div>내용 : ${article.content}</div>