<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
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
	var lastSel;
	var users=$("#Json").val();
	$("#grid").jqGrid({
		url: 'jqGridEditRowDB.jsp?q=2',
		datatype:"json",
		height:"auto",
		colNames:['id','Name','Password','Email'],
		colModel:[
				   {name:'id',index:'id', width:130,sortable:false, editable:false},
		           {name:'name',index:'name', width:130,sortable:false, editable:true},
		           {name:'pwd',index:'pwd',width:100,sortable:false, editable:true},
		           {name:'email',index:'email',width:200,sortable:false, editable:true}
		           ],
		           rowNum:5,
		           rowList:[5,10,15],
		           pager:'#page',
		           viewrecords: true,
		           multiselect: false,
		           gridview: true,
		           caption:"Users Information and Edit Record",
		           onSelectRow: function(id){
		        	   if(id && id!=lastSel){
		        		   $("#grid").jqGrid('restoreRow',lastSel);
		        		   $("#grid").jqGrid('editRow',id,true);
		        		   lastSel=id;
		        		   
		        				   //var row = $("#grid").getRowData(parseInt(id)); 
		        				  // alert(row.toString());
		        				  // var myGrid = $('#grid');
		        				  // var selRowId = myGrid.jqGrid ('getGridParam', 'selrow');
		        				  // var celValue = myGrid.jqGrid ('getCell', selRowId,'name'); 
		        				  // alert(celValue);
		        				/*   $.ajax({
		        					   data : $(row).serializeArray(),
		        					   url : "jqGridEditRowDB.jsp",
		        					   success : function(response){
		        						   alert(response);
		        					   }
		        				   }); */
		        				   // alert(response['id']);
		        			       
		        			    }
		        	   
		           }
		        		   ,
		        		   /*var row = $("#grid").getRowData(id);
		        	   	    var id = row.id;
		        	   	    var name=row.name;
		        	   	    var pwd=row['pwd'];
		        	   	    var email=row['email'];
		        	   	    alert(name);*/
		        	   	   //});
		        	   	
		        	   	   //$("#grid").editRow(email,true);
		        	  
		           
		           editurl:"jqGridEditRowDB.jsp"
		           
	}).jqGrid('navGrid','#pager',{edit:false});
});
function reload(){
	alert("sdsdd");
}
</script>
</head>
<body>
<table id="grid"></table>
<div id="page"></div>
<a href="jqGridAddRow.jsp">Add new Record</a>
</body>
</html>