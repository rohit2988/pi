<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#CmdSubmit").click(function(){
	var name=$("#TxtName").val();
	var pwd=$("#TxtPwd").val();
	var email=$("#TxtEmail").val();
	alert(name+" "+pwd+" "+email);
	var xmlHttpRObj=$.ajax({
		type:"get",
		url:"Exp4.jsp",
		data: {AName:name,APwd:pwd,AEmail:email},
	 	dataType:"html"
	 	
	})
	.done(function(data){
		$("div").html(data);
	})
	.fail(function(jqXHR,textStatus){
		alert(jqXHR.status + "fail"+textStatus);
	});
	});
});
</script>
</head>
<body>
<form action="">
<center>
Name:<input type="text" name="TxtName" id="TxtName" /><br>
Password:<input type="password" name="TxtPwd" id="TxtPwd" /><br>
Email:<input type="text" name="TxtEmail" id="TxtEmail" /><br>
<input type="button" name="CmdSubmit" id="CmdSubmit" value="Login" />
</center>

</form>
<div></div>
</body>
</html>