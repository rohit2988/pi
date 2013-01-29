<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
<script src="js/jquery-1.8.2.js"></script>
 <script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />
<script>
$(document).ready(function(){
	var i=0;
	$("#ListDialog").click(function(){
		$.ajax({
			type:"get",
			url:"DialogDB.jsp",
		 	dataType:'json'
		 	
		})
		.done(function(data){
			//var jsonObject = $.parseJSON(data);
			
			//$("#DialogList").html(data).dialog();
			alert(data);
			
		})
		.fail(function(jqXHR,textStatus){
			alert(jqXHR.status + "fail"+textStatus);
		});
		
	});
});
</script>
</head>
<body>
<input type="button" id="ListDialog" value="List">
<div id="DialogList"></div>
</body>
</html>