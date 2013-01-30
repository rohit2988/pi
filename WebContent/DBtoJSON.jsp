<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.*" %>
  <%@page import="net.sf.json.JSONArray" %>
  <%@page import="net.sf.json.JSONObject" %>
  <%@page import="net.sf.json.JSONString" %>  
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
	var lastsel;
	var users=$("#Json").val();
	$("#grid").jqGrid({
		url: 'formatjson.jsp?q=2',
		datatype:"json",
		height:"auto",
		colNames:['SrNo','Name','Password','Email'],
		colModel:[
				   {name:'id',index:'id', width:130,sortable:false},
		           {name:'name',index:'name', width:130,sortable:false},
		           {name:'pwd',index:'pwd',width:100,sortable:false},
		           {name:'email',index:'email',width:200,sortable:false}
		           ],
		           rowNum:5,
		           rowList:[5,10,15],
		           pager:'#page',
		           sortname:'id',
		           viewrecords: true,
		           sortorder: "desc", 
		           multiselect: false,
		           gridview: true,
		           subGrid:true,
		           subGridUrl:'subgridDB.jsp',
		           subGridModel:[{name:['id','Email','Name','Interest'],width:[30,100,80,80],params:['email']}],
		           caption:"Users Information",
		           onSelectRow: function(id){
		        	   if(id && id!=lastsel){
		        		   $("#grid").jqGrid('restoreRow',lastsel);
		        	   	   $("#grid").jqGrid('editRow',id,true);
		        	   	   lastsel=id;
		        	   }
		           },
		           editurl:"formatjson.jsp"
		           
	});
		
	});

</script>

</head>
<body>
Hey!!!! Grid Starts From Here
<table id="grid"></table>
<div id="page"></div>

</body>
</html>