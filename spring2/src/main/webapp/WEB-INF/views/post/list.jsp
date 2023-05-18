<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Spring 2</title>
         <link 
               href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
               rel="stylesheet" 
               integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
               crossorigin="anonymous">
        <style>
            td, th, table {
                border: 1px solid gray;
                border-collapse: collapse;
            }
        </style>
	</head>
	<body>
		<header class="my-2 p-5 text-center text-bg-dark">
            <h1>포스트 목록 페이지</h1>
        </header>
        
        <nav>
            <ul>
                <li>
                    <c:url var="mainPage" value="/" />
                    <a href="${ mainPage }">메인 페이지</a>
                </li>
                <li>
                    <c:url var="postCreatePage" value="/post/create" />
                    <a href="${ postCreatePage }">새 포스트 작성</a>
                </li>
                
            </ul>
        </nav>
        
        <main>
            <div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr class="table-danger">
                            <th class="table-danger">번호</th>
                            <th>제목</th>
                            <th>내용</th>
                            <th>작성시간</th>
                        </tr>                        
                    </thead>
                    <tbody>
                        <c:forEach items="${ posts }" var="post" >
                            <tr>
                                <td class="table-danger">${ post.id }</td>
                                <td>${ post.title }</td>
                                <td>${ post.content }</td>
                                <td>${ post.created_time }</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </main>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" 
        crossorigin="anonymous"></script>
	</body>
</html>