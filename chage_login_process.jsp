<%@ include file="header.html" %>
<fieldset style="width:auto;background:rgb(251,252,188);text-align:center">
<legend>Login change </legend> 
<br/><br/><br/>

<%@ page import='java.sql.*' %>
<html>
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
String duser="";
String dpass="";
	String user=request.getParameter("user");
	String pass=request.getParameter("pass");
	String nuser=request.getParameter("nuser");
	String npass=request.getParameter("npass");

try
	{
		ResultSet rs=stmt.executeQuery("select * from login");
		while(rs.next())
		{
			duser=rs.getString(1);
			dpass=rs.getString(2);
		}
		if(user.equals(duser) && pass.equals(dpass))
		{
			String sql="update login set username='"+nuser+"',password='"+npass+"'";
			int ch=stmt.executeUpdate(sql);
			if(ch==1)
				out.println("<h2 style='text-align:center;color:green'>Username and password are sucessfully changed <br/><br/>Your new Username : "+nuser+"<br/><br/>New Password : "+npass+"</h2>");
		}
		else 
				out.println("<br/><br/><h2 style='text-align:center;color:red '>Username and password are Wrong  <br/>Please enter currect details </h2>");
		
}		
catch(Exception e){
out.println("<hr>Exception<hr>"+e);
}
%>
<br/><br/><br/>
<a href="homepage.jsp"><input type="button" value="Cancel" style="width:250px;height:35px;text-align:center" ></a>

<br/><br/><br/><br/><br/><br/><br/><br/>
</fieldset>
<%@ include file="footer.html" %>