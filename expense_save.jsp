<%@ include file="header.html" %>
<%@ page import='java.text.*' %>

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
 


DateFormat df1 = new SimpleDateFormat("yyyy-MM-dd");
String dat = df1.format(new java.util.Date());

 String desc=request.getParameter("desc");
 String amount=request.getParameter("amount");

 
out.println("<fieldset style='width:auto;background:rgb(251,252,188); text-align:center;'>");

try{
String sql="insert into expense values('"+dat+"'" +","+ "'"+desc+"'"+"," +amount+")";
int ch=0;
ch=stmt.executeUpdate(sql);
	if(ch==1)
		out.println("<br/><br/><br/><h2 style='color:rgb(234,9,48);text-align:center;'> All expense details are sucessfully saved  </h2>");
			
}
catch(SQLException e)
{
		out.println(e+"<br/><br/><br/><h2 style='color:rgb(234,9,48);text-align:center;'>Unsucess to save expense details !<br/> Please enter currect details</h2>\n");
	out.println();
	
}

%>
<br/><br/><br/>
<table border='0'>
<tr><td><b><a href="expense_entry.jsp"><input type="button" style="width:250px;height:40px;font-size:25;text-align:center" value="Do you want to next expense entry"> </a></b></td><td> <a href="homepage.jsp"><input type="button" style="width:250px;height:40px;font-size:25; text-align:center" value="Cancle"> </a>
</table>
<br/><br/><br/><br/><br/>
</fieldset>


<%@ include file="footer.html" %>