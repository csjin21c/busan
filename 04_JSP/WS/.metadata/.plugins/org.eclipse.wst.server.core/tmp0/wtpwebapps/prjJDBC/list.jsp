<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter" %>
<%@page import="java.util.ArrayList" %>
<%@page import="pkgJDBC.BbsDAO" %>
<%@page import="pkgJDBC.BoardField" %>
<%
int pageNum;
if(request.getAttribute("page")!=null) pageNum=(int)request.getAttribute("page");
else pageNum=10;

int groupNum=1;
out.print(pageNum+"|"+groupNum);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr>
		<td>No.</td>
		<td>파트<td>
	</tr>
	<%
	BbsDAO bbsDAO = new BbsDAO();
	ArrayList<BoardField> list = bbsDAO.getList(pageNum, groupNum);
	out.println(list.size());
	for(int i=0;i<list.size();i++) {
	%>
	<tr>
		<td><%=list.get(i).getIdx() %></td>
		<td><%=list.get(i).getPart() %></td>
	</tr>
	<%
	}
	
	%>
</table>
<a>이전</a> | <a>다음</a>
</body>
</html>