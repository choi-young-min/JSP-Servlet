<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../header.jsp"%>

<div class="join">
	<div id="logo">
		<a href="#"><img src="images/Noogle_logo.gif"></a>
	</div>
	<h2>회원가입</h2>
	<form class="join-form" action="search?command=join" method="post" name="frm">
		<div class="id-press">
			<input type="text" name="id" class="join-text-field" placeholder="아이디를 입력해 주세요">
			<input type="button" value="중복 체크" onclick="idcheck()"><br>
		</div>
		  <input type="password" name="password" class="join-text-field" placeholder="비밀번호"><br>
		
 		<input type="password" name="password2" class="join-text-field" placeholder="비밀번호 확인"><br>
		
	       <input type="text" name="name" class="join-text-field" placeholder="이름을 입력해 주세요"><br>
		
        <input type="email" name="email" class="join-text-field" placeholder="email을 입력해주세요"><br>
		<input type="submit" class="join-submit-btn" value="등록" onclick="go_save()">
		<input type="reset" class="join-submit-btn" value="취소">
</form>
</div>
<%@ include file = "../footer.jsp"%>
