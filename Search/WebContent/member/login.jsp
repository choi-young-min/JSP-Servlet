<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../header.jsp"%>

<div class="clear"></div>
<div class="content">
	<div id="logo">
		<a href="#"><img src="images/Noogle_logo.gif"></a>
	</div>
	<div class ="login">
	<form method="post" action="search?command=login" name="form">
			<input type="text" name="id" class="text-field" placeholder="아이디" value="${id}"><br>
			<input type="password" name="pwd" class="text-field" placeholder="비밀번호" ><br>
			<input type="submit" name="submit"  class="submit-btn" value="로그인" class="submit-btn">
			<input type="submit" name="signin"  class="submit-btn" value="회원가입" class="submit-btn">
			
			<!-- 
			<div class="clear"></div>
			<div>
				<input type="submit" value="로그인" class="submit-btn">
				<input type="button" value="JOIN" class="submit-btn" onclick="location='search?command=join_form'">
			</div>
			 -->
		</form>
	</div>
</div>
<div class="clear"></div>

<%@ include file = "../footer.jsp"%>