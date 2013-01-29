<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var rowdata="";
	var tab="";
	$(":button").click(function(){
		rowObject = $("#tbl").find("tr");
		//tab = '<table border="2" width="100" height="100" id="t2">';
		 
		$(rowObject).each(function(){ // row loop
			var rowString = '<tr class="font">';
			var columnString = "";
			$(this).find("td").each(function(){ //colum loop
				columnString += "<td>"+$(this).text()+"</td>";
			});
			rowString += columnString + "</tr>";
		});	
		 
		$("center").append('<table border="2" width="100" height="100" id="t2">' + rowString + "</table>").html();
		});
});
</script>
<style type="text/css">
.font{
font-size:20px;
color:blue;
background-color:yellow;
}
</style>
</head>
<body>
<form id="FrmTraversing">
		<center>
			<table border="2" width="100" height="100" id="tbl">
				<tr class="font">
					<td>a</td>
					<td>b</td>
					<td>c</td>
				</tr>
				
				<tr class="font">
					<td>d</td>
					<td>e</td>
					<td>f</td>
				</tr>
				
				<tr class="font">
					<td>g</td>
					<td>h</td>
					<td>i</td>
				</tr>
			</table>
			
			<input type="button" value="show" />
		</center>
	</form>
</body>
</html>