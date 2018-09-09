
<%@ include file="header.html" %>
<%@ page import='java.text.*' %>
<%@ page import='java.sql.*' %>
<html>
<head>
<title>course save </title>
</head>

<body>
	<fieldset style='width:auto;background:rgb(251,252,188); text-align:center;'>

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

 String form_no=request.getParameter("form_no");	
 String name=request.getParameter("name");
 String father_name=request.getParameter("father_name");	
 String address=request.getParameter("address");
 String sex=request.getParameter("sex");	
 String dob=request.getParameter("dob");
 String education=request.getParameter("education");	
 String occu=request.getParameter("occu");
 String mobile=request.getParameter("mobile");	
 String email=request.getParameter("email");
 int ch1=0;

	try{
				String sql1="update  student set name='"+name+"'"+","+"father_name='" +father_name+"'"+","+"address='"+address+"'"+","+"sex='"+sex+"'"+","+"dob='"+dob+"'"+","+"education='"+education+"'"+","+"occu='"+occu+"'"+","+"mobile='"+mobile+"'"+","+"email='"+email+"'"+"where form_no='"+form_no+"'";

				ch1=stmt.executeUpdate(sql1);

				if(ch1==1)
				out.println("<br/><br/><br/><h2 style='color:rgb(234,9,48);text-align:center;'> All the student  details are sucessfully saved  </h2>");	
		}
				catch(SQLException e)
				{
				out.println(e+"<br/><br/><br/><h2 style='color:rgb(234,9,48);text-align:center;'>Unsucess to save student details !<br/> Please enter currect details or unique form number ! </h2>\n");
				}
		
%>

<br/><br/><br/>
<table border='0'>
<tr><td><b><a href='student_modify_search.jsp'> <input type="button" style="width:200px;height:40px;font-size:25;text-align:center" value="Do you want to next entry" ></a><td> <a href="homepage.jsp"><input type="button" style="width:200px;height:40px;font-size:25; text-align:center" value="Cancle"> </a>

</table>
<br/><br/><br/><br/><br/>
</fieldset>


<%@ include file="footer.html" %>


