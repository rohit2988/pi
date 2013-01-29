<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="css/jquery-ui-1.9.0.custom.css"></link>
<link rel="stylesheet" href="jqgrid/css/ui.jqgrid.css"></link>

<script src="js/jquery-1.8.2.js"></script>
<script src="js/jquery-ui-1.9.0.custom.js"></script>
<script src="jqgrid/js/jquery.jqGrid.min.js"></script>
<script src="jqgrid/js/i18n/grid.locale-en.js"></script>
<script>
var users={"page":"1",
           "records":"4",
           "rows":[
{"srNo":"1","name":"Lala","email":"lala@gmail.com","password":"lala"},
        {"srNo":"2","name":"Ram","email":"ram@gmail.com","password":"ramraj"},
        {"srNo":"3","name":"Swaroop","email":"swaroop@gmail.com","password":"swaroop"},
        {"srNo":"4","name":"Narayana","email":"narayana@gmail.com","password":"narayana"},
        {"srNo":"5","name":"John","email":"john@gmail.com","password":"john"},
        {"srNo":"6","name":"Carter","email":"carter@gmail.com","password":"carter"},
        {"srNo":"7","name":"Bob","email":"bob@ymail.com","password":"bob"},
        {"srNo":"8","name":"Jackey","email":"jackey@ymail.com","password":"jackey"},
        {"srNo":"9","name":"Bond","email":"bond@gmail.com","password":"bond"},
        {"srNo":"10","name":"James","email":"james@gmail.com","password":"james"},
        {"srNo":"11","name":"Rambo","email":"rambo@gmail.com","password":"rambo"},
        {"srNo":"12","name":"Arnold","email":"arnold@gmail.com","password":"arnold"},
        {"srNo":"13","name":"Tom","email":"tom@ymail.com","password":"Tom"},
        {"srNo":"14","name":"Brad","email":"brad@gmail.com","password":"brad"}
        ]};
	jQuery().ready(function(){
		jQuery("#grid").jqGrid({
			datatype:"jsonstring",
			datastr:users,
			jsonReader:{repeatitems:false},
			viewRecords:true,
			height:"auto",
			colNames:['Srno.','name','email','password'],
			colModel:[
			           {name:'srNo',index:'srNo',width:90,sortable:true},
			           {name:'name',index:'name', width:130,sortable:false},
			           {name:'email',index:'email',width:200,sortable:false},
			           {name:'password',index:'password',width:100,sortable:false}
			           ],
			           multiselect:true,
			           rowNum:5,
			           rowList:[5,10,15],
			           pager:$("#Pager"),
			           loadonce:true,
			           viewrecords: true,
			           gridview: true,
			           caption:"Users Information"
		}).navGrid('#Pager',{edit:false,add:false,del:false}).draggable(); 
	});
</script>
</head>
<body>
<%
try{
	
		String status=request.getParameter("status");
		String rows=request.getParameter("rows");
		String pages =request.getParameter("page");
		int totalPages=0;
		int totalCount=15;
		if(totalCount>0){
			if(totalCount % Integer.parseInt(rows)==0){
				totalPages=totalCount/Integer.parseInt(rows);
			}
			else
			{
				totalPages=(totalCount/Integer.parseInt(rows))+1;
			}
		}
		else{
			totalPages=0;
		}
		%>
					<% int srNo=1;
			for(int i=0;i<15;i++)
			{
				%>
		
		<%
			}
			%>
		
	<%	srNo++;
	
	
}catch(Exception e){}
%>
<table id="grid"></table>
<div id="Pager"></div>
</body>
</html>