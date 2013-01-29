<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<script>
function lookUp(inputString){
	if(inputString.length==0)
		{
		$("#suggessions").hide();
		}
	else
		{
		$.post("LiveSearchDB.jsp",{queryString:""+inputString+""},function(data){
			if(data.length>0){
				$("#suggessions").show();
				$("#autoSuggessionsList").html(data);
			}
		});
		}
}
function fill(thisValue){
	$("#inputString").val(thisValue);
	setTimeout("$('#suggesstions').hide();",200);
}
</script>
<style type="text/css">
body {
font-family: Helvetica;
font-size: 13px;
color: #000;
}
h3 {
margin: 0px;
padding: 0px;
}
.suggestionsBox {
position: relative;
left: 260px;
margin: 0px 0px 0px 0px;
width: 200px;
background-color: #7845DD;
-moz-border-radius: 7px;
-webkit-border-radius: 7px;
border: 2px solid #000;
color: #fff;
}
.suggestionList {
margin: 0px;
padding: 0px;
}
.suggestionList li {
margin: 0px 0px 3px 0px;
padding: 3px;
cursor: pointer;
}
.suggestionList li:hover {
background-color: #DD45CD;
}
</style>
</head>
<body>
<div>
<form>
<input type="text" size="30" value="" id="inputString"
onkeyup="lookup(this.value);" onblur="fill();" />
<div class="suggestionsBox" id="suggestions" style="display: none;">
<div class="suggestionList" id="autoSuggestionsList">
</div>
</div>
</form>
</div>
</body>
</html>