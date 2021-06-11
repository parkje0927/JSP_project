 <%-- 07bookRegisterForm.jsp --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 책 등록</title>
</head>
<body>
	<%-- 로그아웃 상태 --%>
	<c:if test = "${empty sessionScope.mngId }">
		<script type = "text/javascript">
			location.href = "/_jsp_final04_book_mvc2/mg/main.do";
		</script>	
		
		<%--0초만에 해당 페이지로 이동 --%>
		<meta http-equiv = "Refresh" content = "0;url=/book_jsp2/mg/main.do">	
	</c:if>	
	
	<%--로그인 상태 --%>
	<button onclick = "window.location.href = '/_jsp_final04_book_mvc2/mg/main.do'">
		관리자 메인으로
	</button>
	<button onclick = "window.location.href = '_jsp_final04_book_mvc2/mg/bookList.do'">
		목록으로
	</button>
	<br><br>
	
	<form method = "post" action = "_jsp_final04_book_mvc2/mg/bookRegisterPro.do" enctype = "multipart/form-data">
		<table border = "1">
			<tr>
				<th>분류 선택</th>
				<td>
					<select name = "book_kind">
						<option value = "100">문학</option>
						<option value = "200">외국어</option>
						<option value = "300">컴퓨터</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>
					<input type = "text" name = "book_title" size = "50" placeholder = "제목" maxlength = "50">
				</td>
			</tr>
			<tr>
				<th>가격</th>	
				<td>
					<input type = "text" name = "book_price" size = "10" placeholder = "가격" maxlength = "9">원
				</td>
			</tr>
			<tr>
				<th>수량</th>	
				<td>
					<input type = "text" name = "book_count" size = "10" placeholder = "수량" maxlength = "5">권
				</td>
			</tr>
			<tr>
				<th>저자</th>	
				<td> 
					<input type = "text" name = "author" size = "20" placeholder = "저자" maxlength = "30">
				</td>
			</tr>
			<tr>
				<th>출판사</th>
				<td>
					<input type = "text" name = "publishing_com" placeholder = "출판사" maxlength = "30">
				</td>
			</tr>
			<tr>	
				<th>출판일</th>
				<td>
						
										
		</table>
	</form>		
	
	
</body>
</html>