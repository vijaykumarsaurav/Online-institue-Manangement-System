<%@ include file="../oims/header.html" %>
<%@ page import='java.sql.*' %>
<head>
<title BGCOLOR="RED">BATCH ENTRY</title>
<script type ="text/javascript" src="javascript.js"></script>
</head>

<form action="http://localhost:8000/oims/batch_modify_update.jsp" Method="Post" onsubmit="return batchval()">
<center>
<fieldset style="width:500;background:rgb(251,252,188); text-align:center;"><br/>
<h2 style="color:rgb(234,9,48);text-align:center;"> BATCH MODIFY  ENTRY</h2>
<hr>
<table border='0' cellspacing='2'>

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

<%
try{
String batch_name=request.getParameter("batch_name");
out.println("<input type='hidden' name='oldbatch_name' value='"+batch_name+"'>");
ResultSet rs2=stmt.executeQuery("select course_code from course");
	String course[]=new String[200];
	int course_count=0;
	while(rs2.next())
	{
		course[course_count]=rs2.getString(1);
		course_count++;
	}
ResultSet rs3=stmt.executeQuery("select tea_id from teacher");
	String tea[]=new String[200];
	int tea_count=0;
	while(rs3.next())
	{
		tea[tea_count]=rs3.getString(1);
		tea_count++;
	}
ResultSet rs1=stmt.executeQuery("select COUNT(batch_name) from batch where batch_name='"+batch_name+"'");
Boolean row=rs1.next();
if(rs1.getInt(1)==1)
{

ResultSet rs=stmt.executeQuery("select * from batch where batch_name='"+batch_name+"'");
while(rs.next())
{
	out.println("<table border='0' cellspacing='2'><tr><td><b> Batch Name</b></td><td> <input type='text' name='batch_name' id='batch_name' value='"+rs.getString(1)+"'></td><tr><td><b> Course Code</b></td><td><select name='course' id='course' >");


	out.println("<option>"+rs.getString(2)+"</option>");
	for(int i=0;i<course_count;i++)
		out.println("<option>"+course[i]+"</option>");
	
	out.println("</select></td></tr>");

	out.println("<tr><td><b> Teacher</b></td><td><select name='tea_id' id='tea_id'>");
	out.println("<option>"+rs.getString(3)+"</option>");
	for(int i=0;i<tea_count;i++)
		out.println("<option>"+tea[i]+"</option>");
	
	out.println("</select></td></tr>");

	out.println("<tr><td><b> Batch Time</b></td><td> <input type='text' name='batch_time' id='batch_time'  value='"+rs.getString(4)+"'></tr><tr><td><b> Batch Description </b></td><td> <textarea cols='15' rows='3' name='desc' id='desc' >"+rs.getString(5)+"</textarea></tr></table><br/><hr/>");
}
out.println("</table><br/><hr/><input type='submit' value=' Modify ' style='width:100px;height:30px;text-align:center;'>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href='homepage.jsp'><input type='button' value='Cancel' style='width:100px;height:30px;text-align:center;'></a></fieldset></center></form>");
}
else
	{
	out.println("<tr><td colspan='2'><h2 style='text-align:center'>Batch Name not Fount !<br/>Please Enter currect Batch name ?</h2></td></tr></table>");
out.println("<br/><br/><br/><table border='0'><tr><td><b><a href='batch_modify_search.jsp'><input type='button' style='width:250px;height:40px;font-size:25;text-align:center' value='Do you want to next batch Modify'> </a></b></td><td> <a href='homepage.jsp'><input type='button' style='width:250px;height:40px;font-size:25; text-align:center' value='Cancle'> </a></table><br/><br/><br/><br/><br/>");
}	
}

catch(Exception e){
out.println("<hr>Exception of sql :<hr>"+e);
}

%>

<%@ include file="../oims/footer.html" %>



