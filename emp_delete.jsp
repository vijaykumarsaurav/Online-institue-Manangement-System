<%@ include file="../oims/header.html" %>
<%@ page import='java.sql.*' %>
<form action="http://localhost:8000/oims/course_modify_update.jsp" Method="Post">
<center>
<fieldset style="width:500;background:rgb(251,252,188); text-align:center;"><br/>
<h2 style="color:rgb(234,9,48);text-align:center;"> EMPLOYEE DELETE</h2>
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
String emp_id=request.getParameter("emp_id");
ResultSet rs1=stmt.executeQuery("select COUNT(emp_id) from employee where emp_id='"+emp_id+"'");
Boolean row=rs1.next();
if(rs1.getInt(1)==1)
{
int ch1=stmt.executeUpdate("DELETE from employee where emp_id='"+emp_id+"'");
int ch2=stmt.executeUpdate("DELETE from emp_sal where emp_id='"+emp_id+"'");

if(ch1==1)

out.println("<h2 style='text-align:center;'>Employee Delete secucessfull <br/> employee id :"+emp_id+"</h2>");
else 
out.println("<h2 style='text-align:center;'>Employee Delete not secucessfull <br/> employee id:"+emp_id+"</h2>");

out.println("<br/><br/><br/><table border='0'><tr><td><b><a href='emp_delete_search.jsp'><input type='button' style='width:250px;height:40px;font-size:25;text-align:center' value='Do you want to next employee delete'> </a></b></td><td> <a href='homepage.jsp'><input type='button' style='width:250px;height:40px;font-size:25; text-align:center' value='Cancle'> </a></table><br/><br/><br/><br/><br/>");
}
else
	{
	out.println("<tr><td colspan='2'><h2 style='text-align:center'>Employee id does  not Fount !<br/>Please Enter currect employee id ?</h2></td></tr></table>");
out.println("<br/><br/><br/><table border='0'><tr><td><b><a href='emp_delete_search.jsp'><input type='button' style='width:250px;height:40px;font-size:25;text-align:center' value='Do you want to next employee delete '> </a></b></td><td> <a href='homepage.jsp'><input type='button' style='width:250px;height:40px;font-size:25; text-align:center' value='Cancle'> </a></table><br/><br/><br/><br/><br/>");
}	
}

catch(Exception e){
out.println("<hr>Exception of sql :<hr>"+e);
}

%>

<%@ include file="../oims/footer.html" %>



