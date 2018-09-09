<% 
		Integer count=(Integer)session.getValue("tracker.count");
		if(count==null)
		{
%>			
<%@ include file="login.jsp" %>
<%		
		}
		else
		{
%>

<%@ include file="../oims/header.html" %>
<%@ page import='java.sql.*' %>
<html>
<head>
<title>ALL COLLECTION DETAILS</title>
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
ResultSet rs0=stmt.executeQuery("select COUNT(form_no) from ALLCOLLECTION");
Boolean row=rs0.next();
int flag=0,c=1;
if(rs0.getInt(1)>=1)
{
ResultSet rs=stmt.executeQuery("select * from allcollection");
out.println("<head><title BGCOLOR='RED'>student all collection details  </title></head>	<body bgcolor='pink'>				<br/><h1 style='text-align:center'>All student collection details  </h2><center>	<table style='allign:left' BORDER='3' bordercolor='green' cellspacing='0' cellpadding ='4'><tr style='color:pink;font-size:15px' bgcolor='green'><td>Sr.no.</td><td>From No.</td><td>Name</td><td>Father's Name</td><td>Batch </td><td>Course </td><td>Paid </td><td>Credit</td><td>Date</td></tr>");

while(rs.next())
{
					if(flag==0)
					{
				
					out.println("<tr bgcolor='darer 25%'><td>"+c+"</td><td> <a href='"+"student_display_search.jsp?form_no='"+rs.getString(1)+"'>"+rs.getString(1)+"</a></td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td></tr>");
					flag=1;
					}	
					else
					{ 				
				out.println("<tr bgcolor='white'><td>"+c+"</td><td> <a  href='share_display.php?reg=100'>"+rs.getString(1)+"</a></td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td></tr>");
					flag=0;					
					}
					c=c+1;
}
ResultSet rs1=stmt.executeQuery("select sum(paid)  from allcollection");
rs1.next();
int paid=rs1.getInt(1);
ResultSet rs2=stmt.executeQuery("select sum(credit) from allcollection");
rs2.next();
int credit=rs2.getInt(1);
out.println("<tr bgcolor='green' style='color:pink;font-size:17px;'><td colspan='6' style='text-align:right'><b>Total</td><td><b>"+paid+"</td><td><b>"+credit+"</b></td><td></td></tr>");
out.println("<tr><td colspan='9' style='text-align:center'> <a href='homepage.jsp'><input type='button' value='Cancel' style='width:150px;height:26px;font-size:16px;text-align:center;'></a></td></tr></table></fieldset></center></form>");
}
else
	{
	
out.println("<br/><br/><br/><h2 style='text-align:center;'>No any Student details  stored </h2><br/><br/><p style='text-align:center;'><a href='homepage.jsp'><input type='button' style='width:250px;height:40px;font-size:25; text-align:center' value='Cancle'> </a></p><br/><br/><br/><br/><br/>");
}	
}
catch(Exception e){
out.println("<hr>Exception<hr>"+e);
}
%>

<%@ include file="footer.html" %>
<%
}
%>