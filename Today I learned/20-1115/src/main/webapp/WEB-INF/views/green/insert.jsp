<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
	<form action="/green/insert" method="post">
		<table class="table table-striped">
			<thead>
				<p style="font-size:20px; font-weight:bold; ">[ 성적입력페이지  ]</p>
				<!-- <tr>
					<th>번호  <input type="text" name="gid" style="border:none" ></th>
				</tr>  -->
				<tr>  <!-- name값을 정해줘야 post로 이동하면서 controller에서 green파라미터에서 받을 수 있음 -->
					<th>이름   <input type="text" name="name" style="border:none"></th>
				</tr>
				<tr>
					<th>국어  <input type="text" name="korea" style="border:none"></th>
				</tr>
				<tr>
					<th>수학  <input type="text" name="math" style="border:none"></th>
				</tr>
			</thead>
		</table>
			<input type="submit" value="입력" class="btn"  >
	</form>
</body>
</html>