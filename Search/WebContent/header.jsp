<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/header.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
<link rel="stylesheet" type="text/css" href="css/search.css">
<link rel="stylesheet" type="text/css" href="css/join.css">
<link rel="stylesheet" type="text/css" href="css/allstyle.css">
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="member/member.js"></script>
</head>
	<body>
	<div id = "navbar">
		<div class ="header">
			<nav>
				<c:choose>
					<c:when test="${empty sessionScope.loginUser}">
						<a href="search?command=login_form">LOGIN</a>
						<a href="search?command=join_form">JOIN</a>
					</c:when>
					<c:otherwise>
						${sessionScope.loginUser.name}님
						<a href="search?command=logout">LOGOUT</a>
					</c:otherwise>
				</c:choose>
				<a href="search?command=all">ALL</a>
			</nav>
		</div>
	</div>
		<div class="clear"></div>
		
	
