<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1"> <!-- 부트스트랩 -->
		<title>JOO</title>
		<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
			crossorigin="anonymous">
	</head>
	<body>
		<div>
			<h1>관리자 페이지</h1>
            <hr/>
                <select id="chooseMenu" class="form-select form-select-lg mb-3"
                    aria-label=".form-select-lg example">
                    <option selected>관리자 기능</option>
                    <option value="1">상품관리</option>
                    <option value="2">유저관리</option>
                    <option value="3">문의관리</option>
                    <option value="4">리뷰관리</option>
                </select>
                
                <!-- 선택지에 따라서 하단에 리스트 표시 -->
                <div id="product" class="d-none">상품관리</div>
                <div id="user" class="d-none">유저관리</div>
                <div id="quseries" class="d-none">문의관리</div>
                <div id="review" class="d-none">리뷰관리</div>
        
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
			crossorigin="anonymous"></script>
            <script src="../static/js"></script>
		</div>
	</body>
</html>