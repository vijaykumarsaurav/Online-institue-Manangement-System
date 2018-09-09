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

<%@ include file="header.html" %>
<head>
<title BGCOLOR="RED">COLLECTION SEARCH</title>
<script type ="text/javascript" src="javascript.js"></script>
</head>
<form action="http://localhost:8000/oims/collection_entry.jsp" method="post" onsubmit="return check()">
<center>
<fieldset style="width:auto;background:rgb(251,252,188);text-align:center">
<legend>Student Search </legend> 
</br></br>
<table border="1" cellpadding="5" cellspacing="5" width="400" height="250" bordercolor="red" style="background:rgb(240,240,170);">
<tr><th colspan="2" style="color:rgb(234,9,48);text-align:center;font-size:20px"><b>STUDENT COLLECTION </th></tr>

<tr><td style="text-align:center"><b>Select Form no.</b></td> <td style="text-align:center"> <select name="form_no" id="form_no"><option>Select</option>
<%@ page import='java.sql.*' %>

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
ResultSet rs=stmt.executeQuery("select form_no from student");
while(rs.next())
{
out.println("<option>"+rs.getString(1)+"</option>");
}
}
catch(Exception e){
out.println("<hr>Exception<hr>"+e);
}
%>
</td></tr></select>


<tr><td style="text-align:center"><input type="submit" value="SUBMIT"  style="width:100px;height:30px;text-align:center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
</td><td style="text-align:center"><a href="homepage.jsp"><input type="button" value="Cancel" style="width:100px;height:30px;text-align:center" ></a></td></tr>
</table>
</br></br></br></br>
</fieldset>
</center>
</form>
<%@ include file="footer.html" %>
<%
}
%>