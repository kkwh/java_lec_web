<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
        <style>
            td, th, table {
                border: 1px solid gray;
                border-collapse: collapse;
            }
        </style>
	</head>
	<body>
		 <header>
          <h1>검색 결과!!!</h1>
        </header> 
        
        <nav>
            <ul>
                <li>
                    <%-- 상대경로에서 현재 폴더(/)의 의미: context root까지의 주소
                         http://localhost:8081/post/
                     --%>
                    <c:url var="mainPage" value="/"></c:url>
                    <a href="${ mainPage }">메인 페이지</a>
                </li>
                <li>
                    <c:url var="postCreate" value="/post/create"></c:url>
                    <a href="${ postCreate }">새 포스트 작성</a>
                </li>
                
            </ul>
        </nav>
        
        <main>
            <table>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>내용</th>
                        <th>작성자</th>
                        <th>수정 시간</th>
                    </tr>                   
                </thead>
                <tbody>
                    <c:forEach items="${ posts }" var="post">
                        <tr>
                            <td>${ post.id }</td>
                            <td>${ post.title }</td>
                            <td>${ post.content }</td>
                            <td>${ post.author }</td>
                            <td>${ post.modifiedTime }</td>
                        </tr>
                    </c:forEach>                    
                </tbody>                
            </table>
        </main>
	</body>
</html>