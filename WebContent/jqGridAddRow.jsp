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
		url: 'jqGridEditRowDB.jsp?q=2',
		datatype:"json",
		height:"auto",
		colNames:['id','Name','Password','Email'],
		colModel:[
				   {name:'id',index:'id', width:130,sortable:false, editable:false,editoptions:{readonly:true,size:10}},
		           {name:'name',index:'name', width:130,sortable:false, editable:true,editoptions:{size:10}},
		           {name:'pwd',index:'pwd',width:100,sortable:false, editable:true, editoptions:{size:25}},
		           {name:'email',index:'email',width:200,sortable:false, editable:true,editoptions:{size:10}}
		           ],
		           rowNum:5,
		           rowList:[5,10,15],
		           pager:'#page',
		           viewrecords: true,
		           sortorder: "desc", 
		           multiselect: false,
		           gridview: true,
		           caption:"Users Information and Edit Record",
		           editurl:"jqGridEditRowDB.jsp"
			           
	}).jqGrid('navGrid','#pager',{edit:false});
	$("#Add").click(function(){$("#grid").jqGrid('editGridRow',"new",{height:280,reloadAfterSubmit:false});});
});

</script>
</head>
<body>
<table id="grid"></table>
<div id="page"></div>
<input type="button" id="Add" value="Add">
<a href="jqGridEditRow.jsp">Edit in grid</a>
</body>
</html>