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
	<title>MVC Ex1 - session</title>
	<link href="" rel="stylesheet" /> 
    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
</head>
<body>
	<h2>Member Login</h2>
	<form action="chklogin.do" method="post" name="textform">
		<table>
			<tr>
				<td>User Name<br/></td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>ID :</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td>이메일<br/></td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="회원 가입">
					<input type="reset" value="초기화">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>