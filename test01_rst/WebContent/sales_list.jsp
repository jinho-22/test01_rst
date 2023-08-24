<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="layout/db_connect.jsp" %>
<%
	String sql = "select a.custno, a.custname, decode(grade, 'A', 'VIP', 'B', '일반', 'C', '직원') grade, sum(price) price "
			+" from member_tbl_02 a, money_tbl_02 b "
			+" where a.custno=b.custno "
			+" group by a.custno, a.custname,grade "
			+" order by price desc";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>쇼핑몰 회원정보수정</title>
	<link rel="stylesheet" type="text/css" href="./css/style.css?ver1.9.0">
	
</head>
<body>
	<header>
		<jsp:include page="layout/header.jsp"></jsp:include>
	</header>
	<nav>
		<jsp:include page="layout/nav.jsp"></jsp:include>
	</nav>
	<main id="section">
		<h3 class="title">회원목록조회/수정</h3>
		<div class="scroll">
		<table class="table_line">
		
		
		
		<tr>
			<th>회원번호</th>
			<th>회원성명</th>
			<th>고객등급</th>
			<th>매출</th>
		</tr>
		<%
		while(rs.next()){
		%>
			<tr>
				
				<td><%= rs.getString("custno") %></td>
				<td><%= rs.getString("custname") %></td>
				<td><%= rs.getString("grade") %></td>
				<td><%= rs.getString("price") %></td>
				
				
			</tr>
			
			
		<%
		}
		%>	
			
		
		
		
		
		
		
		
		</table> 
		</div>
	</main>
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>

</body>
</html>