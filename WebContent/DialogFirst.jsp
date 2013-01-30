<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
 <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="/resources/demos/external/jquery.bgiframe-2.1.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />
 <style>
body { font-size: 62.5%; }
label, input { display:block; }
input.text { margin-bottom:12px; width:95%; padding: .4em; }
fieldset { padding:0; border:0; margin-top:25px; }
h1 { font-size: 1.2em; margin: .6em 0; }
div#users-contain { width: 350px; margin: 20px 0; }
div#users-contain table { margin: 1em 0; border-collapse: collapse; width: 100%; }
div#users-contain table td, div#users-contain table th { border: 1px solid #eee; padding: .6em 10px; text-align: left; }
.ui-dialog .ui-state-error { padding: .3em; }
.validateTips { border: 1px solid transparent; padding: 0.3em; }
</style>
<script>
$(function(){
			$("#Dialog").dialog({
				modal:true,
				width:300,
				autoOpen:false,
				height:300,
				show:"blind",
				hide:"exploid",
				buttons:{
					"Register here":function(){
						$("#Register").dialog({height:250,width:500});
						$("#Register").css("visibility","visible");
						$("this").dialog("close");
						
					}
				}
			});
			$("#CmdDialog").click(function(){
				$("#Dialog").dialog("open").slow(1000);
				
	});
			$("#Cancel").click(function(){
				$("#Dialog").dialog("close");
			})
});
</script>
</head>
<body>
<div id="Dialog" class="ui-widget"><center><b><u>User Login</u></b><br>
<label style="font-size:12px;">User Name/Email id:</label><input type="text" id="TxtUName" /><br>
<label style="font-size:12px;">Password:</label><input type="password" id="TxtPwd" />
<input type="button" id="Login" value="Login" /><input type="button" id="Cancel" value="Cancel" />
</center></div>
<div id="Register" style="visibility:hidden">
<center>
Name:<input type="text" id="TxtName" /><br>
DOB:<input type="text" id="TxtDOB" /><br>
Email:<input type="text" id="TxtEmail" /><br>
Password:<input type="password" id="TxtPwd" /><br>
Confirm Password:<input type="password" id="TxtCPwd" /><br>
<input type="button" id="Register" value="Register" />
</center>
</div>
Hey!!! Wats up!!!!!!!!!!!!!!!!!!!!!!
<input type="button" id="CmdDialog" value="Dialog" />
</body>
</html>