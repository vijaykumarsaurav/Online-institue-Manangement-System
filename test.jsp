ram is god beettor god
<%@ page import='java.sql.*' %>
<html>
<head>
<title>MySQL Connectivity</title>
</head>

<body>
<h1 align='center'>MYSQL Connectivity</h1>
<hr>
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
ResultSet rs=stmt.executeQuery("select * from books_details");
while(rs.next())
{
out.println(rs.getString(1));
out.println(rs.getString(2));
out.println(rs.getString(3));
out.println(("<br>"));
}
}
catch(Exception e){
out.println("<hr>Exception<hr>"+e);
}
%>