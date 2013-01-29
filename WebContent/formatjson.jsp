<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
  <%@page import="net.sf.json.JSONArray" %>
  <%@page import="net.sf.json.JSONObject" %>
  <%@page import="net.sf.json.JSONString" %> 
<%
Connection con=null;
PreparedStatement pst=null;
ResultSet rs=null;
int totalCount=0;
int totalPages=0;
int srNo_JSON=1;
String rows=request.getParameter("rows");
String pages = request.getParameter("page");
try{
	Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/testtest","root","");   
	pst=con.prepareStatement("SELECT * FROM LOGIN");
	rs=pst.executeQuery();
	JSONArray jArray = null;
	JSONArray jArraySub=null;
	JSONObject jObjUsers = new JSONObject();
	JSONArray rowData = new JSONArray();
	int i=1;
	int count = 1;
	JSONObject json = new JSONObject();
	while(rs.next()){		
		jArray=new JSONArray();
		jArraySub=new JSONArray();
		int id_JSON=rs.getInt("id");
		String name_JSON=rs.getString("name");
		String pwd_JSON=rs.getString("pwd");
		String email_JSON=rs.getString("email");
		jArray.add(id_JSON);
		jArray.add(name_JSON);
		jArray.add(pwd_JSON);
		jArray.add(email_JSON);		
		jObjUsers.put("id",i++);
		jObjUsers.put("cell",jArray);
		rowData.add(jObjUsers);
		srNo_JSON++;
	}
	//System.out.print(srNo_JSON);
	if(srNo_JSON>0){
		if(srNo_JSON % Integer.parseInt(rows)==0){
			totalPages=srNo_JSON/Integer.parseInt(rows);			
		}
		else
		{
			totalPages=(srNo_JSON/Integer.parseInt(rows))+1;
		}
	}
	else{totalPages=0;}
	JSONObject obj = new JSONObject();
	obj.put("total",totalPages);
	obj.put("page",pages);
	obj.put("records",srNo_JSON);	
	obj.put("rows",rowData);
	System.out.println(jArray.get(3));
	out.print(obj);
	%><%
	
	//out.println(request.getAttribute("JString"));
}catch(Exception e){e.printStackTrace();}
//out.print(e.getMessage());}
%>