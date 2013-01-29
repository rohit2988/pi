<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
  <%@page import="net.sf.json.JSONArray" %>
  <%@page import="net.sf.json.JSONObject" %>
  <%@page import="net.sf.json.JSONString" %> 
<%
Connection con=null;
PreparedStatement pst=null;
PreparedStatement pstEdit=null;
ResultSet rs=null;
JSONArray jArray = null;
JSONObject jObjUsers = new JSONObject();
JSONObject jObjMain =new JSONObject();
jArray=new JSONArray();
int totalCount=0;
int totalPages=0;
int srNo_JSON=1;
String name=request.getParameter("term");
System.out.println(name);
try{
	Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/testtest","root","");  
    pst=con.prepareStatement("SELECT NAME FROM LOGIN WHERE NAME LIKE '%"+name+"%'");
    rs=pst.executeQuery();
    while(rs.next()){
    String rsName=rs.getString("name");
   
    jArray.add(rsName);
    }
    System.out.println(jArray);
    out.println(jArray);
    }catch(Exception e){e.printStackTrace();}
%>