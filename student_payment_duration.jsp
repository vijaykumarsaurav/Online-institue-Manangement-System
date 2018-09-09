<%@ include file="../oims/header.html" %>
<%@ page import='java.sql.*' %>
<html>
<head>
<title>ALL COURSE DETAILS</title>
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
String fdate=request.getParameter("fdate");
String tdate=request.getParameter("tdate");


ResultSet rs0=stmt.executeQuery("select COUNT(dat) from payment where dat >='"+fdate+"'");
Boolean row=rs0.next();
int flag=0,c=1;
if(rs0.getInt(1)>=1)
{
ResultSet rs=stmt.executeQuery("select * from payment where dat >='"+fdate+"'&& dat <='"+tdate+"'");
out.println("<head><title BGCOLOR='RED'>student payment details  </title></head>	<body bgcolor='pink'>				<br/><h1 style='text-align:center'>All student payment details  </h2><center>	<table style='allign:left' BORDER='3' bordercolor='green' cellspacing='0' cellpadding ='4'><tr style='color:pink;font-size:15px' bgcolor='green'><td>Sr.no.</td><td>From No.</td><td>Payment Mode</td><td>Registation fee</td><td>Paid </td><td>Credit </td><td>Total </td><td>Date of Joining</td></tr>");

while(rs.next())
{
					if(flag==0)
					{
				
					out.println("<tr bgcolor='darer 25%'><td>"+c+"</td><td> <a href='"+"student_display_search.jsp?form_no='"+rs.getString(1)+"'>"+rs.getString(1)+"</a></td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td></tr>");
					flag=1;
					}	
					else
					{ 				
				out.println("<tr bgcolor='white'><td>"+c+"</td><td> <a  href='share_display.php?reg=100'>"+rs.getString(1)+"</a></td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td></tr>");
					flag=0;					
					}
					c=c+1;
}
ResultSet rs1=stmt.executeQuery("select sum(registation)  from payment where dat >='"+fdate+"'&& dat <='"+tdate+"'");
rs1.next();
int reg=rs1.getInt(1);
ResultSet rs2=stmt.executeQuery("select sum(paid) from payment where dat >='"+fdate+"'&& dat <='"+tdate+"'");
rs2.next();
int paid=rs2.getInt(1);
ResultSet rs3=stmt.executeQuery("select sum(credit)  from payment where dat >='"+fdate+"'&& dat <='"+tdate+"'");
rs3.next();
int credit=rs3.getInt(1);
ResultSet rs4=stmt.executeQuery("select sum(total) from payment where dat >='"+fdate+"'&& dat <='"+tdate+"'");
rs4.next();
int total=rs4.getInt(1);
out.println("<tr bgcolor='green' style='color:pink;font-size:17px;'><td colspan='3' style='text-align:right'><b>Total</td><td><b>"+reg+"</td><td><b>"+paid+"</td><td><b>"+credit+"</td><td><b>"+total+"</b></td><td></td></tr>");
out.println("<tr><td colspan='8' style='text-align:center'> <a href='homepage.jsp'><input type='button' value='Cancel' style='width:150px;height:26px;font-size:16px;text-align:center;'></a></td></tr></table></fieldset></center></form>");
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