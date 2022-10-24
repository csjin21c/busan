<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=EUC-KR");
%>
<%@page import="java.io.PrintWriter" %>
<%@page import="java.util.ArrayList" %>
<%@page import="pkgDB.DBBean" %>
<%@page import="pkgDB.DBDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록 출력</title>
</head>
<body>
<table border="1">
<%
int pageNum=1;//리스트의 페이지 이동을 위한 페이지 번호
int groupNum=2;//한번에 반환 받을 목록의 갯수
if(request.getAttribute("page")!=null) {
	pageNum=(Integer)request.getAttribute("page");
}
else pageNum=1;
out.print("page : "+pageNum);

int prev = pageNum - 1;
int next = pageNum + 1;
DBDao Dao = new DBDao();
ArrayList<DBBean> list = Dao.getList(pageNum, groupNum);
//out.println(list.size());//ArrayList.size() 갯수 반환, 2차 배열 형태
for(int i=0; i<list.size(); i++) {
%>
<tr>
<td><%=list.get(i).getIdx() %></td>
<td><%=list.get(i).getPart() %></td>
</tr>
<%} %>
</table>
<a href="board.do?page=<%=prev %>">이전</a> | <a href="board.do?page=<%=next %>">다음</a>
</body>
</html>


