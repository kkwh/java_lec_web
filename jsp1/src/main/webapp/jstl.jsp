<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.jsp1.model.Contact"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP</title>\
        <style>
            td, th, table {
                border: 1px solid gray;
                border-collapse: collapse;
            }
        </style>
	</head>
	<body>
		<h1>JSTL</h1>
        <h2>JSP Standard Tag Library</h2>
        <%-- JSTL 사용하기 (JSP Standard Tag Library)
            1. POM.xml 파일에 의존성(dependency) 추가(jstl:jstl:1.2) 
            2. JSTL을 사용하는 JSP 파일에서 taglib 지시문을 설정.
        --%>
        
        <%
        // HTML 리스트 아이템으로 사용할 더미 데이터 생성:
        String[] sites = {"YouTube", "Instagram", "Facebook"};
        // -> scriptlet에서 선언한 지역 변수는 EL에 사용할 수 없음.
        // -> EL에서 사용할 수 있는 변수는 pageContext, request, session, application에 저장된 속성들.
        
        pageContext.setAttribute("sites", sites);
        %>
        
        <h2>JSP scriptlet, expression</h2>
        <ul>
        <% for(String s : sites) { %>
            <li><%= s %></li>
        <% } %>
         </ul>
         
        <h2>JSTL, EL</h2>
        <ul>
            <c:forEach items="${ sites }" var="s">
                <li>${ s }</li>
            </c:forEach>
        </ul>
        
        <h2>Table</h2>
        <%-- 테이블에서 사용할 더미 데이터 --%>
        <%
        ArrayList<Contact> list = new ArrayList<>();
        for(int i = 0; i < 5; i++) {
            Contact c = new Contact(i, "이름_" + i, "phone_" + i, "email_" + i);
            list.add(c);
        }
        
        // 리스트를 EL에서 사용할 수 있도록 하기 위해서:
        pageContext.setAttribute("contacts", list);
        %>
        
        <h2>JSP 이용한 테이블 작성</h2>
        <table>
            <thead>
                <tr>
                    <th>id</th>                
                    <th>name</th>                
                    <th>phone</th>                
                    <th>email</th>                
                </tr> 
            </thead>
            <tbody>
            <% for(Contact contact : list) { %>
                <tr>
                    <td><%= contact.getId() %></td>
                    <td><%= contact.getName() %></td>
                    <td><%= contact.getPhone() %></td>
                    <td><%= contact.getEmail() %></td>
                </tr>                         
             <% } %>               
            </tbody>       
        </table>
        
        <h2>JSTL, EL 이용한 테이블 작성</h2>
        <table>
            <thead>
                <tr>
                    <th>id</th>                
                    <th>name</th>                
                    <th>phone</th>                
                    <th>email</th>                
                </tr> 
            </thead>
            <tbody>
                <c:forEach items="${ contacts }" var="contact">
                <tr>
                    <td>${ contact.id }</td>
                    <td>${ contact.name}</td>
                    <td>${ contact.phone }</td>
                    <td>${ contact.email }</td>
                </tr>
                 </c:forEach>                                    
            </tbody>       
        </table>
        
	</body>
</html>