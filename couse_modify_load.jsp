<%@ include file="../oims/header.html" %>
<%@ page import='java.sql.*' %>
<title BGCOLOR="RED">course entry</title>
<script type ="text/javascript" src="javascript.js"></script>
</head>
<form action="http://localhost:8000/oims/course_modify_update.jsp" Method="Post" onsubmit="return courseval()">
<center>
<fieldset style="width:500;background:rgb(251,252,188); text-align:center;"><br/>
<h2 style="color:rgb(234,9,48);text-align:center;"> COURSE MODIFY  ENTRY</h2>
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
String course_code=request.getParameter("course_code");
out.println("<input type='hidden' name='course_code' value='"+course_code+"'>");
ResultSet rs1=stmt.executeQuery("select COUNT(course_code) from course where course_code='"+course_code+"'");
Boolean row=rs1.next();
if(rs1.getInt(1)==1)
{
ResultSet rs=stmt.executeQuery("select * from course where course_code='"+course_code+"'");
while(rs.next())
{
out.println("<tr><td><b> Course  Code</b></td><td> <input type='text' name='cc' id='cc'value='"+rs.getString(1)+"'></td></TR><tr><td><b> Course Name </b></td><td> <input type='text' name='cn' id='cn' value='"+rs.getString(2)+"'></td><tr><td><b> Duration </b></td><td><input type='text' name='du' id='du' value='"+rs.getString(3)+"'></tr><tr><td><b> Down Payment </b></td><td><input type='text' name='dp' id='dp' value="+rs.getString(4)+"></tr><tr><td><b> Installment Payment </b></td><td> <input type='text' name='ip' id='ip'   value="+rs.getString(5)+"></tr><tr><td><b> Description </b></td><td> <textarea cols='15' rows='3' name='desc' id='desc' >"+rs.getString(6)+"</textarea></tr>");
}
out.println("</table><br/><hr/><input type='submit' value=' Modify ' style='width:100px;height:30px;text-align:center;'>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href='homepage.jsp'><input type='button' value='Cancel' style='width:100px;height:30px;text-align:center;'></a></fieldset></center></form>");
}
else
	{
	out.println("<tr><td colspan='2'><h2 style='text-align:center'>Course code not Fount !<br/>Please Enter currect course code ?</h2></td></tr></table>");
out.println("<br/><br/><br/><table border='0'><tr><td><b><a href='course_modify_search.jsp'><input type='button' style='width:250px;height:40px;font-size:25;text-align:center' value='Do you want to next course Modify entry'> </a></b></td><td> <a href='homepage.jsp'><input type='button' style='width:250px;height:40px;font-size:25; text-align:center' value='Cancle'> </a></table><br/><br/><br/><br/><br/>");
}	
}

catch(Exception e){
out.println("<hr>Exception of sql :<hr>"+e);
}

%>

<%@ include file="../oims/footer.html" %>



