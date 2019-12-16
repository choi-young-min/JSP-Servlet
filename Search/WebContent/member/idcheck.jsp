<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Check ID Redundancy</title>
		<style type="text/css">
			body {
				background-color: #B96DB5;
				font-family: Verdana;
			}
			
			#wrap {
				margin: 0 20px;
			}
			
			h1 {
				font-family: "Times New Roman", Times, serif;
				font-size: 45px;
				color: #CCC;
				font-weight: normal;
			}
			
			input[type=button], input[type=submit] {
				float: right;
			}
		</style>
		<script type="text/javascript">
			function idok(){
			  opener.frm.id.value="${id}"; //opener : parent
			  opener.frm.reid.value="${id}";
			  self.close();
			}
		</script>
	</head>
	<body>
		<div id="wrap">
			<h1>Check ID Redundancy</h1>
			<form method=post name=frm style="margin-right: 0"
				action="search?command=id_check_form">
				User ID 
				<input type=text name="id" value=""> 
				<input type=submit value="Search" class="submit"><br>
				<div style="margin-top: 20px"><!-- memberDAO.confirmID() return value -->
					<c:if test="${message == 1}">
						<script type="text/javascript">
	          				opener.document.frm.id.value="";
	        			</script>
	        			${id} is already being used.
	      			</c:if>
					<c:if test="${message==-1}">
	        			${id} is available.
	        			<input type="button" value="Use" class="cancel" onclick="idok()">
					</c:if>
				</div>
			</form>
		</div>
	</body>
</html>