function go_save() {
	if (document.frm.id.value == "") {
		alert("Input ID");
		document.formm.id.focus();
		
	} else if (document.frm.id.value != document.formm.reid.value) {
		alert("Click 'Check ID' Button");
		document.formm.id.focus();
		
	} else if (document.frm.pwd.value == "") {
		alert("Input Password");
		document.formm.pwd.focus();
		
	} else if ((document.frm.pwd.value != document.formm.pwdCheck.value)) {
		alert("Passwords are not identical.");
		document.formm.pwd.focus();
		
	} else if (document.frm.name.value == "") {
		alert("Input Name");
		document.formm.name.focus();
		
	} else if (document.frm.email.value == "") {
		alert("Input Email address.");
		document.formm.email.focus();
		
	} else {
		document.formm.action = "search?command=join";
		document.formm.submit();
	}
}


function idcheck() {
	if (document.frm.id.value == "") {
		alert('Input ID.');
		document.frm.id.focus();
		return;
	}
	var url = "search?command=id_check_form&id="
			+ document.frm.id.value;
	window.open(url, 
				"_blank_1",
				"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=330, height=200");
}

function openWindow1(){
	var userInput = $("input[name='user-input']").val();
	console.log("userInput:"+userInput);
	document.frm.action = "https://www.google.com/search?q="+userInput;
}


function openWindow2(){
	var userInput = $("input[name='user-input']").val();
	console.log("userInput:"+userInput);
	document.frm.action = "https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query="+userInput;
}


function openWindow3(){
	var userInput = $("input[name='user-input']").val();
	console.log("userInput:"+userInput);
	document.frm.action = "https://search.daum.net/search?w=tot&DA=YZR&t__nil_searchbox=btn&sug=&sugo=&q="+userInput;
}


function openWindow4(){
	var userInput = $("input[name='user-input']").val();
	console.log("userInput:"+userInput);
	document.frm.action = "https://search.daum.net/nate?nil_suggest=btn&w=tot&DA=SBC&q="+userInput;
}


function openWindow5(){
	var userInput = $("input[name='user-input']").val();
	console.log("userInput:"+userInput);
	document.frm.action = "https://www.youtube.com/results?search_query="+userInput;
}


function openWindow6(){
	var userInput = $("input[name='user-input']").val();
	console.log("userInput:"+userInput);
	document.frm.action = "https://search.yahoo.com/search?p="+userInput;
}


function openWindow7(){
	var userInput = $("input[name='user-input']").val();
	console.log("userInput:"+userInput);
	document.frm.action = "https://www.twitch.tv/search?term="+userInput;
}


function openWindow8(){
	var userInput = $("input[name='user-input']").val();
	console.log("userInput:"+userInput);
	document.frm.action = "https://www.op.gg/summoner/userName="+userInput;
}

























