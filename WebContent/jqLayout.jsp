<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="js/jquery-1.8.2.js"></script>
<script src="js/juery-ui-1.9.0.custom.js"></script>
<script src="js/jquery.layout-latest.js"></script>
<script>
$(document).ready(function(){
	$('body').layout({applyDefaultStyles:true},{resizable:true});
	
});
</script>
</head>
<body>
<div class="ui-layout-center">Center
<button onclick="$('div').toggle('west')">Toggle west</button>
</div>
<div class="ui-layout-north">North</div>
<div class="ui-layout-south">South</div>
<div class="ui-layout-east">East</div>
<div class="ui-layout-west">west</div>

</body>
</html>