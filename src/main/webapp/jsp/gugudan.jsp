<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
int dan = Integer.parseInt(request.getParameter("dan"));
int limit = Integer.parseInt(request.getParameter("limit"));

int age = 20;
%>

<h1>== <%=dan%>단 ==</h1>

<% for(int i = 1; i <= limit; i++) { %>
  <div><%=dan%> * <%=i%> = <%=dan * i%></div>
<% } %>

<!-- 테스트 -->
<% if(age >= 20) { %>
  <div>성인입니다.</div>
<% } else { %>
  <div>미성년자 입니다.</div>
<% } %>

<h2>현재 나이는 <%=age%>살 입니다.</h2>
<h2><% out.println("현재 나이는 " + age + "살 입니다."); %></h2>
<h2>현재 나이는 20살 입니다.</h2>
