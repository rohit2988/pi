<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%@page import="net.sf.json.JSONArray" %>
<%@page import="net.sf.json.JSONObject" %>
<%@page import="net.sf.json.JSONString" %> 
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DialogDB</title>
</head>
<body>
<%
Connection con=null;
PreparedStatement pst=null;
JSONObject jObj=new JSONObject();
JSONArray jArray=new JSONArray();
ResultSet rs=null;
int i=0;
try{
	Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/testtest","root","");   
	pst=con.prepareStatement("SELECT name FROM LOGIN");
	rs=pst.executeQuery();
	while(rs.next()){
		JSONObject jSubObj=new JSONObject();
		jSubObj.put("name",rs.getString(1));
		jArray.add(jSubObj);
		jObj.put("Parent",jArray);
	}
	out.print(jObj);
	}
catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>