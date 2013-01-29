<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager" %>
    <%@page import="java.sql.Connection" %>
    <%@page import="java.sql.PreparedStatement" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<style type="text/css">
.font{
font-size:20px;
color:blue;
background-color:yellow;
}
</style>
</head>
<body>
<%String name=request.getParameter("AName");
  String pwd=request.getParameter("APwd");
  String email=request.getParameter("AEmail");
  String status="";
  try{
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/testtest","root","");
	  PreparedStatement pst=con.prepareStatement("INSERT INTO LOGIN(NAME,PWD,EMAIL) VALUES(?,?,?)");
	  pst.setString(1,name);
	  pst.setString(2,pwd);
	  pst.setString(3,email);
	  //pst.executeUpdate();
	  if(pst.executeUpdate()>0)
	  {
		  status="success";
	  out.println(status);
	  }
	  else{
		  status="fail";
		  out.println(status);
	  }
  }catch(Exception e){e.printStackTrace();}
 
%>
</body>


</html>