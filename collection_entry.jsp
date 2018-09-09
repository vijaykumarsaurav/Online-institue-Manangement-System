<%@ include file="../oims/header.html" %>
<%@ page import='java.sql.*' %>
<head>
<title BGCOLOR="RED">COLLECTION ENTRY</title>
<script type ="text/javascript" src="javascript.js"></script>
</head>
 <form action="http://localhost:8000/oims/collection_save.jsp" method="POST" onsubmit="return collValidation()">
<center>
<fieldset style="width:500;background:rgb(251,252,188); text-align:center;"><br/>
<h2 style="color:rgb(234,9,48);text-align:center;"> Student Collection </h2>
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
	String form_no=request.getParameter("form_no");
	ResultSet rsc=stmt.executeQuery("select COUNT(form_no) from payment where form_no='"+form_no+"'");
	Boolean row=rsc.next();
  if(rsc.getInt(1)==1)
  {	
	ResultSet rs=stmt.executeQuery("select name,father_name,course,batch_name from student where form_no='"+form_no+"'");
	while(rs.next())
	{
		course=rs.getString(3);
		out.println("<tr><td><b> Form Number </b></td><td>"+form_no+" </td><input type='hidden' name='form_no' value='"+form_no+"'></tr>");
		out.println("<tr><td><b> Name </b></td><td>"+rs.getString(1)+" </td><input type='hidden' name='name' value='"+rs.getString(1)+"'></tr>");
		out.println("<tr><td><b> Father's Name </b></td><td>"+rs.getString(2)+" </td><input type='hidden' name='father' value='"+rs.getString(2)+"'></tr>");
		out.println("<tr><td><b> Course </b></td><td>"+rs.getString(3)+" </td><input type='hidden' name='course' value='"+rs.getString(3)+"'></tr>");
		out.println("<tr><td><b> Batch  </b></td><td>"+rs.getString(4)+" </td><input type='hidden' name='batch' value='"+rs.getString(4)+"'></tr>");
	}

	rs1=stmt.executeQuery("select mode,registation,paid,credit from payment where form_no='"+form_no+"'");
	String mode=null;
	int ins=0,regis=0,paid=0,remain=0;

	while(rs1.next())
	{
		mode=rs1.getString(1);
	    regis=rs1.getInt(2);
		paid=rs1.getInt(3);
		remain=rs1.getInt(4);
	}

	if(mode.equals("Down"))
	{
		rs3=stmt.executeQuery("select installment_payment from course where course_code='"+course+"'");
		while(rs3.next())
		{
			ins=rs3.getInt(1);
			out.println("<tr><td><b> Paid  </b></td><td>"+paid+" </td><input type='hidden' id='paid' name='paid' value='"+paid+"'></tr>");
			out.println("<tr><td><b> Remain  </b></td><td>"+remain+" </td><input type='hidden' id='remain' name='remain' value='"+remain+"'><input type='hidden' id='reg' name='reg' value='"+regis+"'></tr>");
		}
		
		  out.println("<h4 style='text-align:center'>DOWN PAYMENT <br/>it alredy paid </h4><br/><table border='0'><tr><td><b><a href='collection_search.jsp'><input type='button' style='width:250px;height:40px;font-size:25;text-align:center' value='Do you want to next collection '> </a></b></td><td> <a href='homepage.jsp'><input type='button' style='width:250px;height:40px;font-size:25; text-align:center' value='Cancle'> </a></table><br/><br/><br/><br/><br/></fieldset>");

	}
	else 
	{
		rs3=stmt.executeQuery("select installment_payment from course where course_code='"+course+"'");
		while(rs3.next())
		{
			ins=rs3.getInt(1);
			out.println("<tr><td><b> Paid  </b></td><td>"+paid+" </td><input type='hidden' id='paid' name='paid' value='"+paid+"'></tr>");
			out.println("<tr><td><b> Remain  </b></td><td>"+remain+" </td><input type='hidden' id='remain' name='remain' value='"+remain+"'><input type='hidden' id='reg' name='reg' value='"+regis+"'></tr>");
		}
		out.println("</select></tr><tr><td><b> Amount  </b></td><td><input type='text' id='amount' name='amount'> </td></tr><tr><td><b> Now Remain  </b></td><td id='td'><input type='text' id='nc' name='nc'  onfocus='getCal()' readonly='true'></td></tr></table><input type='hidden' id='tp' name='tp'><br/><hr><input type='submit' value='Save' style='width:70;height:30;'><input type='reset' value='Reset' style='width:70;height:30;'><a href='homepage.jsp'><input type='button' value='Cancel' style='width:70;height:30;'></a></fieldset></center></FORM>");
	}
  }
  else 
  out.println("<h2 style='text-align:center'>Does not found this form number <br/>Please Enter currect form number !</h2><br/><br/><br/><table border='0'><tr><td><b><a href='collection_search.jsp'><input type='button' style='width:250px;height:40px;font-size:25;text-align:center' value='Do you want to next collection '> </a></b></td><td> <a href='homepage.jsp'><input type='button' style='width:250px;height:40px;font-size:25; text-align:center' value='Cancle'> </a></table><br/><br/><br/><br/><br/></fieldset>");
}
catch(Exception e){
out.println("<hr>Exception <hr>"+e);
}

%>



<%@ include file="../oims/footer.html" %>