
<%@ include file="../oims/loginheader.jsp" %>
<%@ page import='java.sql.*' %>
<html>
<head>
<title>ALL BATCH DETAILS</title>
</head>

<body>

<%!
public Statement stmt = null;
private Connection con = null;
private String userName = "root";
private String password = "";
private String dataBase ="vijay";
private String url = "jdbc:mysql://localhost/" + dataBase;
%>
<%
try{
Class.forName("org.gjt.mm.mysql.Driver");
con = DriverManager.getConnection (url, userName, password);
stmt = con.createStatement();
}
catch (ClassNotFoundException e1)
{
out.println ("Cannot Class Found: "+e1);
}
catch (SQLException e)
{
out.println ("Cannot connect to database server Exception: "+e);
}
%>
<%	try{
ResultSet rs1=stmt.executeQuery("select COUNT(batch_name) from batch");
Boolean row=rs1.next();
int flag=0,c=1;
if(rs1.getInt(1)>=1)
{
ResultSet rs=stmt.executeQuery("select * from batch");
out.println("<head><title BGCOLOR='RED'>Batch Details  </title></head>	<body bgcolor='pink'>				<br/><h1 style='text-align:center'>ALL BATCH DETAILS  </h2><center>	<table style='allign:left' BORDER='3' bordercolor='green' cellspacing='0' cellpadding ='4'><tr bgcolor='green'><td>Sr.no.</td><td>Batch Name </td><td>Course Name </td><td>Teacher id</td><td> Batch Time </td><td>Batch Description</td></tr>");

while(rs.next())
{
					if(flag==0)
					{
				
					out.println("<tr bgcolor='darer 25%'><td>"+c+"</td><td> "+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td></tr>");
					flag=1;
					}	
					else
					{ 				
				out.println("<tr bgcolor='white'><td>"+c+"</td><td> "+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td></tr>");
					flag=0;					
					}
					c=c+1;
}
out.println("<tr><td colspan='7' style='text-align:center'> <a href='login.jsp'><input type='button' value='Cancel' style='width:150px;height:26px;font-size:16px;text-align:center;'></a></td></tr></table></fieldset></center></form>");
}
else
	{
	
out.println("<br/><br/><br/><h2 style='text-align:center;'>No any Batches are maked  </h2><br/><br/><p style='text-align:center;'><a href='homepage.jsp'><input type='button' style='width:250px;height:40px;font-size:25; text-align:center' value='Cancle'> </a></p><br/><br/><br/><br/><br/>");
}	
}
catch(Exception e){
out.println("<hr>Exception<hr>"+e);
}
%>

<%@ include file="loginfooter.jsp" %>
