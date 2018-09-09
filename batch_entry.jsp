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
<head>
<title BGCOLOR="RED">BATCH ENTRY</title>
<script type ="text/javascript" src="javascript.js"></script>
</head>
<form action="http://localhost:8000/oims/batch_save.jsp" Method="Post" onsubmit="return batchval()">
<center>
<fieldset style="width:500;background:rgb(251,252,188); text-align:center;"><br/>
<h2 style="color:rgb(234,9,48);text-align:center;"> MAKE BATCH  ENTRY</h2>
<hr>
<table border='0' cellspacing='2'>
<tr><td><b> Batch Name</b></td><td> <input type="text" name="batch_name" id="batch_name" ></td>
<tr><td><b> Course Code</b></td><td><select name="course" id="course" ><option>Select Course</option>
<%!
public Statement stmt = null;
private Connection con = null;
%>

<%
try{
Class.forName("org.gjt.mm.mysql.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/vijay","root","");
stmt = con.createStatement();
out.println ("Database connection established");
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
ResultSet rs=stmt.executeQuery("select course_code from course");
while(rs.next())
{
out.println("<option>"+rs.getString(1)+"</option>");
}
out.println("</select></td></tr>");
ResultSet rs1=stmt.executeQuery("select tea_id,name from teacher");
out.println("<tr><td><b> Teacher</b></td><td><select name='tea_id' id='tea_id' ><option>Select Teacher </option>");
while(rs1.next())
{
out.println("<option>"+rs1.getString(1)+"</option>");
}
out.println("</select></td></tr>");
}
catch(Exception e){
out.println("<hr>Exception<hr>"+e);
}
%>


<tr><td><b> Batch Time</b></td><td> <input type="text" name="batch_time" id="batch_time"  ></tr>
<tr><td><b> Batch Description </b></td><td> <textarea cols="15" rows="3" name="desc" id="desc" > </textarea></tr>


</table>

<br/>
<hr/>
<input type="submit" value="Save" style="width:70;height:30;">
<input type="reset" value="Reset" style="width:70;height:30;">
<a href="homepage.jsp"><input type="button" value="Cancel" style="width:70;height:30;"></a>

</fieldset>
</center>
</form>
<%@ include file="../oims/footer.html" %>
<%
}
%>