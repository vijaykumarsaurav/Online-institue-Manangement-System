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
	String batch_name=request.getParameter("batch_name");
ResultSet rs1=stmt.executeQuery("select COUNT(batch_name) from student where batch_name='"+batch_name+"'");
Boolean row=rs1.next();
int flag=0,c=1;
if(rs1.getInt(1)>=1)
{
ResultSet rs=stmt.executeQuery("select * from student where batch_name='"+batch_name+"'");
out.println("<head><title BGCOLOR='RED'>batch Details  </title></head>	<body bgcolor='pink'>				<br/><h2 style='text-align:center'>ALL STUDENT  DETAILS  BATCH WISE </h2><center><h3 style='text-align:center'>	Batch Name : "+batch_name+"</h3><table style='allign:left' BORDER='3' bordercolor='green' cellspacing='0' cellpadding ='4'><tr bgcolor='green'><td>Sr.no.</td><td>From No.</td><td>Name</td><td>Father's Name</td><td>Course</td><td>Mobile no.</td><td>Date of Joining</td></tr>");

while(rs.next())
{
					if(flag==0)
					{
				
					out.println("<tr bgcolor='darer 25%'><td>"+c+"</td><td> <a href='student_display_form_wise.jsp?form_no="+rs.getString(1)+"'>"+rs.getString(1)+"</a></td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(11)+"</td><td>"+rs.getString(13)+"</td></tr>");
					flag=1;
					}	
					else
					{ 				
				out.println("<tr bgcolor='white'><td>"+c+"</td><td> <a href='student_display_form_wise.jsp?form_no="+rs.getString(1)+"'>"+rs.getString(1)+"</a></td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(11)+"</td><td>"+rs.getString(13)+"</td></tr>");
					flag=0;					
					}
					c=c+1;
}
out.println("<tr><td colspan='7' style='text-align:center'> <a href='homepage.jsp'><input type='button' value='Cancel' style='width:150px;height:26px;font-size:16px;text-align:center;'></a></td></tr></table></fieldset></center></form>");
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