<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div class="clear"></div>

<div style="margin-bottom:450px;">
	<div id="logo">
		<a href="#"><img src="images/Noogle_logo.gif"></a>
	</div>
	
	<form class="searchform" action="" method="post" name="frm">
		<div id="searching">
		
			<input id ="text-field" type="text" name="user-input" placeholder="검색어 입력">
			<input type="submit" value="확인" id="submit-btn">
			
		</div>
	</form>
	<div class="mypage">
		<c:choose>
			<c:when test="${empty sessionScope.loginUser}">
			</c:when>
			<c:otherwise>
				<div class="logosall">
			       <div class="logos1all"> 
			            <a onclick="javascript_:openWindow1()"><img class="logosimgall" src="images/logos/google2.jpg"></a>
			            <a onclick="javascript_:openWindow2()"><img class="logosimgall" src="images/logos/naver2.jpg"></a>
			            <a onclick="javascript_:openWindow3()"><img class="logosimgall" src="images/logos/daum2.jpg"></a>
			            <a onclick="javascript_:openWindow4()"><img class="logosimgall" src="images/logos/nate4.gif"></a>
			        </div>
			        <div class="logos2all">
			            <a onclick="javascript_:openWindow5()"><img class="logosimgall" src="images/logos/youtube2.jpg"></a>
			            <a onclick="javascript_:openWindow6()"><img class="logosimgall" src="images/logos/yahoo4.gif"></a>
			            <a onclick="javascript_:openWindow7()"><img class="logosimgall" src="images/logos/twitch2.jpg"></a>
			            <a onclick="javascript_:openWindow8()"><img class="logosimgall" src="images/logos/opgg4.gif"></a>
			        </div>
			    </div>
			</c:otherwise>
		</c:choose>
	</div>
	
</div>

<%@ include file="../footer.jsp" %>