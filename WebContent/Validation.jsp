<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Validation</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
  <script type="text/javascript" src="http://jzaefferer.github.com/jquery-validation/jquery.validate.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#ValidationFrm").validate();
	$("#submit").click(function(event){
		$("#TxtName").addClass("TxtBorder");
	});
	$("#TxtName").focus(function(){
		$("#TxtName").addClass("TxtBorder");
		$("#TxtEmail").removeClass("TxtBorder");
	});
	$("#TxtEmail").focus(function(){
		$("#TxtEmail").addClass("TxtBorder");
		$("#TxtName").removeClass("TxtBorder");
	});
	$("select").change(function(){
	var str="";
	$("select option:selected").each(function(){
	str+=$(this).text()+" ";
	});
	$("#TxtName").val(str);
	})
	.trigger('change');
});
</script>
<style>
.TxtBorder{
border-color:red;
}
</style>
</head>
<body>
<form action="" id="ValidationFrm">
Name:<input type="text" id="TxtName" class="required" />
Email:<input type="text" id="TxtEmail" class="required email" />
<input type="text" id="TxtBet" /> 
<select>
<option>c</option>
<option>c++</option>
<option>java</option>
</select>
<input type="submit" value="Submit" id="submit" />
<div></div>
</form>
</body>
</html>