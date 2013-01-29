<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
 <script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<script>
var data=[];
$(document).ready(function(){
	 function log( message ) {
		 $( "<div>" ).text( message ).prependTo( "#log" );
		 $( "#log" ).scrollTop( 0 );
		 }
	//$("#names li").each(function(){
		
	//	 data.push({label:$(this).text(),category:"frends"});
	//});
	$("#name").autocomplete({
		source:function(request,response){
			
			$.ajax({
				url:"LiveSearchDB.jsp",
				datatype:"jsonp",
				data:{term:request.term}
			
			})
			.done(function(data){
				response($.map(data,function(item){
					return{
						value:data
					};
				}));
				
			})
			.fail(function(jqXHR,textStatus){
				alert(jqXHR.status + "fail"+textStatus);
			});
		},minLength:2
	});
});
</script>
</head>
<body>
<div class="ui-widget">
<label for="name">Your name: </label>
<input id="name" />
</div>
<div class="ui-widget" style="margin-top: 2em; font-family: Arial;">
Result:
<div id="log" style="height: 200px; width: 300px; overflow: auto;" class="ui-widget-content"></div>
</div>
<!--  <ul id="names" style="display:none;">
	<li>Rohit Mishra</li>
	<li>ChandraKant</li>
	<li>Triloki Nath</li>
	<li>A. Shrinivas Rao</li>
	<li>Rahul Pyasi</li>
	<li>Abhinandan</li>
	<li>Ujjawal</li>
	<li>Nitin</li>
	<li>Nitesh</li>
	<li>Sandeep</li>
	<li>Sachin</li>
	<li>Sahanshah</li>
	<li>KK</li>
	<li>Dhammu</li>
	<li>Chitranshu</li>
	<li>Swapnesh</li>
	<li>Abhisek</li>
	<li>Pravesh</li>
	<li>Shilpa</li>
	<li>Sheela</li>
	<li>Swati</li>
	<li>Rasmi</li>
	<li>Priya</li>
	<li>Arpana</li>
	<li>Shradha</li>
	<li>Priyanka</li>
	<li>Neelima</li>
	<li>Mangla</li>
	<li>Ruby</li>
	<li>Pallavi</li>
</ul>-->
</body>
</html>