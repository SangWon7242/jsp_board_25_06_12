<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Jakarta EE 9+ 새로운 방식 -->
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ include file="../../common/head.jspf" %>



<h1>게시물 리스트</h1>

<table>
  <colgroup>
    <col width="100"/>
    <col />
    <col width="100"/>
  </colgroup>
  <thead>
    <tr>
      <th>번호</th>
      <th>제목</th>
      <th>비고</th>
    </tr>
  </thead>
  <tbody>
    <!-- 컬렉션 반복 -->
    <c:forEach var="article" items="${articles}">
      <tr>
        <td>${article.id}</td>
        <td>
          <a href="detail/free/${article.id}">${article.subject}</a>
        </td>
        <td>기타</td>
      </tr>
    </c:forEach>
  </tbody>
</table>


<%@ include file="../../common/foot.jspf" %>