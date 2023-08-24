<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>

<%@ include file="layout/db_connect.jsp" %>
<%

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>쇼핑몰 회원관리</title>
	<link rel="stylesheet" type="text/css" href="./css/style.css?ver1.0.8">
	<script type="text/javascript">
		function checkValue() {
			var cv = document.data;
			
			if(!cv.custno.value) {
				alert("회원번호를 입력하세요.");
				cv.custno.focus();
				return false;
			
				
			
			}
		}
	</script>
</head>
<body>
	<header>
		<jsp:include page="layout/header.jsp"></jsp:include>
	</header>
	<nav>
		<jsp:include page="layout/nav.jsp"></jsp:include>
	</nav>
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>
	<main id="section">
			<h2 class="title">홈쇼핑 회원 등록</h2>
			<form name="data" method="post" action="z_inquiry.jsp" onsubmit="return checkValue()">
			<table class="table_line">
				<tr>
					<th>회원번호</th>
					<td><input type="text" name="custno"></td>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="조회">
						<input type="button" value="취소" onclick="location.href='z_input.jsp'">
						<input type="button" value="회원목록조회/수정" onclick="location.href='member_list.jsp'">
					</td>
				</tr>
			</table>
			</form>
	</main>
</body>
</html>