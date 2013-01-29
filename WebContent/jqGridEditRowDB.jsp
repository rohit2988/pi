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
int totalCount=0;
int totalPages=0;
int srNo_JSON=1;
String rows=request.getParameter("rows");
String pages = request.getParameter("page");
String oper=request.getParameter("oper");
System.out.println(oper);
String id=request.getParameter("id");
String name=request.getParameter("name");
String pwd=request.getParameter("pwd");
String email=request.getParameter("email");
System.out.println(id);
System.out.println(name);
System.out.println(pwd);
System.out.println(email);
try{
	Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/testtest","root","");  
    if(oper!=null){
    	if(oper.equals("add"))
    	{   
    		int rowid=0;
    		System.out.println("add in ......");
        	pstEdit=con.prepareStatement("SELECT COUNT(*) AS COUNT FROM LOGIN");
        	rs=pstEdit.executeQuery();
        	while(rs.next()){
            rowid=rs.getInt("COUNT");
        	}
        	System.out.println("dddddddddddddddddddddddddddd"+rowid+rs);
        	pstEdit=con.prepareStatement("Insert into login(id,name,pwd,email) values(?,?,?,?)");
        	pstEdit.setInt(1,rowid++);
        	pstEdit.setString(2,name);
        	pstEdit.setString(3,pwd);
        	pstEdit.setString(4,email);
        	pstEdit.executeUpdate();
        }
    	else if(oper.equals("edit"))
    	{
    	System.out.println("Hello hereeeeee");
    	pstEdit=con.prepareStatement("update login set name='"+name+"',pwd='"+pwd+"',email='"+email+"' where id="+id);
    	System.out.println("Pst Loadedssssssssssssss"+pstEdit);
    	int upd=pstEdit.executeUpdate();
    	System.out.println(upd+"Success");
    	}
    }
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
		String name_JSON=rs.getString(1);
		String pwd_JSON=rs.getString(2);
		String email_JSON=rs.getString(3);
		Integer id_JSON=rs.getInt(4);
		jArray.add(count++);
		jArray.add(name_JSON);
		jArray.add(pwd_JSON);
		jArray.add(email_JSON);	
		jArray.add(id_JSON);
		jObjUsers.put("id",i++);
		jObjUsers.put("cell",jArray);
		rowData.add(jObjUsers);
		srNo_JSON++;
	}
	//System.out.print(srNo_JSON);
	if(srNo_JSON>0){
		
			totalPages=srNo_JSON/Integer.parseInt(rows);			
		}
		else
		{
			totalPages=0;
		}
	int iPages=Integer.parseInt(pages);
	if(iPages > totalPages){
	iPages=totalPages;
	}
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