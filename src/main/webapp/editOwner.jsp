<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="es.salesianos.model.*" %>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editing Owner</title>
</head>
<body>
	<form action="/updateOwner" method="post">
		<span>nombre:</span> 
		<input type="text" name="name" value="<c:out value="${owner.name}"/>" > <br/>
		<span>apellido:</span> 
		<input type="text" name="surname" value="<c:out value="${owner.surname}"/>"> <br/>
		
		<input type="submit">
	</form>
</body>
</html>