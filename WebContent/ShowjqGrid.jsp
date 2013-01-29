<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/jquery-ui-1.9.0.custom.css"></link>
<link rel="stylesheet" href="jqgrid/css/ui.jqgrid.css"></link>

<script src="js/jquery-1.8.2.js"></script>
<script src="js/jquery-ui-1.9.0.custom.js"></script>
<script src="jqgrid/js/jquery.jqGrid.min.js"></script>
<script src="jqgrid/js/i18n/grid.locale-en.js"></script>
<script>
$(document).ready(function(){
	$("#grid").jqGrid({
		url:"subgridDB.jsp",
		datatype:"json",
		
	});
});
</script>
</head>
<body>
<%
out.println(request.getAttribute("JString"));
%>
<table id="grid"></table>
<div id="page"></div>
</body>
</html>