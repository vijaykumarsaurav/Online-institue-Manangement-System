<%@ include file="header.html" %>

<%@ page import='java.sql.*' %>
<html>
<head>
<title>course save </title>
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

<%	
 String batch_name=request.getParameter("batch_name");	
 String tea_id=request.getParameter("tea_id");
 String course=request.getParameter("course");	
 String batch_time=request.getParameter("batch_time");	
 String desc=request.getParameter("desc");
 
out.println("<fieldset style='width:auto;background:rgb(251,252,188); text-align:center;'>");

try{
String sql="insert into batch values('"+batch_name+"'" +","+ "'"+tea_id+"'"+"," +"'"+course+"'" +"," +"'"+batch_time+"'" +"," +"'"+desc+"'"+")";
int ch=0;
ch=stmt.executeUpdate(sql);
	if(ch==1)
		out.println("<br/><br/><br/><h2 style='color:rgb(234,9,48);text-align:center;'> All the batch details are sucessfully saved  </h2>");
			
}
catch(SQLException e)
{
		out.println("<br/><br/><br/><h2 style='color:rgb(234,9,48);text-align:center;'>Unsucess to save batch details !<br/> Please enter currect details becourse batch name is unique !</h2>\n");
}

%>
<br/><br/><br/>
<table border='0'>
<tr><td><b><a href="batch_entry.jsp"><input type="button" style="width:250px;height:40px;font-size:25;text-align:center" value="Do you want to next batch entry"> </a></b></td><td> <a href="homepage.jsp"><input type="button" style="width:250px;height:40px;font-size:25; text-align:center" value="Cancle"> </a>
</table>
<br/><br/><br/><br/><br/>
</fieldset>


<%@ include file="footer.html" %>