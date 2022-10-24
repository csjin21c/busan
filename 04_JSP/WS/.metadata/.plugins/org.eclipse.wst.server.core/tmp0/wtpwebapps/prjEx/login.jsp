<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=UTF-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Title</title>
    <link href="" rel="stylesheet" /> 
    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
</head>
<body>
<h2>입력한 정보</h2>
<p>Name : <%=session.getAttribute("sessName") %></p>
<p>ID : <%=session.getAttribute("sessId") %></p>
<p>PW : <%=session.getAttribute("sessPw") %></p>
<p>Email : <%=session.getAttribute("sessEmail") %></p>
</body>
</html>