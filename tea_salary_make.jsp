<%@ include file="../oims/header.html" %>
<%@ page import='java.sql.*' %>
<%@ page import='java.text.*' %>

<head>
<title BGCOLOR="RED">teacher salary paid</title>
<script type ="text/javascript" src="javascript.js"></script>
</head>
 <form action="http://localhost:8000/oims/tea_salary_save.jsp" method="POST" onsubmit="return empmakecheck()">
<center>
<fieldset style="width:500;background:rgb(251,252,188); text-align:center;"><br/>
<h2 style="color:rgb(234,9,48);text-align:center;"> Teacher Salary Payment </h2>
<hr>
<table border='0' cellspacing='2' width='300'>
<%!
public Statement stmt = null;
private Connection con = null;
public ResultSet rs1=null,rs2=null,rs3=null;
%>

<%
try{
Class.forName("org.gjt.mm.mysql.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/vijay","root","");
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
try
{
	String course="";
	String tea_id=request.getParameter("tea_id");
	ResultSet rsc=stmt.executeQuery("select COUNT(tea_id) from teacher where tea_id='"+tea_id+"'");
	Boolean row=rsc.next();
  DateFormat df1 = new SimpleDateFormat("yyyy-MM-dd");
  String dat = df1.format(new java.util.Date());
  if(rsc.getInt(1)==1)
  {	
	ResultSet rs=stmt.executeQuery("select * from teacher where tea_id='"+tea_id+"'");
	while(rs.next())
	{
		course=rs.getString(2);
		out.println("<tr><td><b> Teacher ID </b></td><td>"+tea_id+" </td><input type='hidden' name='tea_id' value='"+tea_id+"'></tr>");
		out.println("<tr><td><b> Name </b></td><td>"+rs.getString(4)+" </td><input type='hidden' name='name' value='"+rs.getString(4)+"'></tr>");
		out.println("<tr><td><b> Father's Name </b></td><td>"+rs.getString(5)+" </td><input type='hidden' name='father' value='"+rs.getString(5)+"'></tr>");
		out.println("<tr><td><b> Teaching course </b></td><td>"+rs.getString(2)+" </td><input type='hidden' name='course' value='"+rs.getString(2)+"'></tr>");
		out.println("<tr><td><b> Salary  </b></td><td>"+rs.getString(3)+" </td><input type='hidden' name='batch' value='"+rs.getString(3)+"'></tr>");
		out.println("<tr><td><b> Date  </b></td><td>"+rs.getString(13)+" </td><input type='hidden' name='batch' value='"+rs.getString(13)+"'></tr>");

	}
	out.println("</select></tr><tr><td><b> Amount  </b></td><td><input type='text' id='amount' name='amount'> </td></tr></table><input type='hidden' id='tp' name='tp'><br/><hr><input type='submit' value='Save' style='width:70;height:30;'><input type='reset' value='Reset' style='width:70;height:30;'><a href='homepage.jsp'><input type='button' value='Cancel' style='width:70;height:30;'></a></fieldset></center></FORM>");
	
  }
  else 
  out.println("<h2 style='text-align:center'>Does not found this id <br/>Please Enter currect tea id!</h2><br/><br/><br/><table border='0'><tr><td><b><a href='tea_salary_search.jsp'><input type='button' style='width:250px;height:40px;font-size:25;text-align:center' value='Do you want to next payment '> </a></b></td><td> <a href='homepage.jsp'><input type='button' style='width:250px;height:40px;font-size:25; text-align:center' value='Cancle'> </a></table><br/><br/><br/><br/><br/></fieldset>");
}
catch(Exception e){
out.println("<hr>Exception <hr>"+e);
}

%>



<%@ include file="../oims/footer.html" %>