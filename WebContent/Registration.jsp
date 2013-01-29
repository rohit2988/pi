<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Registration Form</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	$("#button").click(function(){
		
		$("#form input, select,textarea").each(){
			$this.next("span").html("")
		}
		
		$validation.rule("TxtName",{blank,alpha_with_space})
		$validation.rule("TxtName",{blank,alpha_with_space})
		$validation.rule("TxtName",{blank,alpha_with_space})
		$validation.rule("TxtName",{blank,alpha_with_space})
		$validation.rule("TxtName",{blank,alpha_with_space})
		
		if($validation.run()==false){
			
			var errors = $validation.getError();
			.each(errors){ //id - message
				$(key).css("");
				$(key).next("span").html(message);
				
			}
			}
			return false
		}
		
	
		
		return true;
		
		$("input").css("border","1px solid #ffffff");
		var error = "";
		if($("#TxtName").val()==""){
			error = $("#TxtName").css("border","1px solid #ff0000");
		}		
		
		if($("#TxtEmail").val()==""){
			$("#p2").show();
			}
		else
			{$("#p2").hide();}
		if($("#TxtPwd").val()==""){$("#p3").show();}
		else
			{$("#p3").hide();}
		if($("#TxtCPwd").val()==""){$("#p4").show();}
		else
			{$("#p4").hide();}
	});
});
</script>
</head>
<body>
<form>
<center>
<table>
<tr><td>Name</td><td><input type="text" id="TxtName" /><span></span></td><td></td></tr>
<tr><td>Email Id</td><td><input type="text" id="TxtEmail" /></td><td><p style="color:red;display:none" id="p2">field is empty</p></td></tr>
<tr><td>Password</td><td><input type="password" id="TxtPwd" /></td><td><p style="color:red;display:none" id="p3">field is empty</p></td></tr>
<tr><td>Confirm Password</td><td><input type="password" id="TxtCPwd" /></td><td><p style="color:red;display:none" id="p4">field is empty</p></td></tr>
<br>
<tr><td></td><td><input type="button" value="submit" id="button" style="background:yellow;"/></td></tr>
</table>
</center>
</form>
</body>
</html>