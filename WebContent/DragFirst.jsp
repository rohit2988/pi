<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
 <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="/resources/demos/external/jquery.bgiframe-2.1.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script>$(document).ready(function(){
	$("#Draggable1").draggable({cursor:"move",cursorAt:{top:70,left:110}});
	$("#Draggable2").draggable({cursor:"move",cursorAt:{top:70,left:110}});
	$("#Btn1").droppable({
		accept:"#Draggable1",
		drop: function(event,ui){
		$(this).val().html($("#Draggable1").text());
	}});
});
</script>
</head>
<body>
<div style="backgroud:grey;border:1px solid;height:500px;width:500px;">
<div id="Draggable1" style="backgroud:#ccc;border:1px solid;height:150px;width:250px;">
<h1>Hey Drag Me</h1>
</div>
<div id="Draggable2" style="border:1px solid;height:150px;width:250px;"><h1>I can be drag bt can't be dropped</h1></div>
<div id="Droppable" style="backgroud:#ccc;border:1px solid;height:150px;width:250px;">
<h1>Drop eligible here</h1>
</div>
<input type="button" id="Btn1" value="Reset" /> 
</div>
</body>
</html>