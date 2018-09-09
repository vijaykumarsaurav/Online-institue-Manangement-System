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
<html>
<head>
<title BGCOLOR="RED">STUDENT ENTRY</title>
<script type ="text/javascript" src="javascript.js"></script>
<script type ="text/javascript" src="ajax_get_course_price.js"></script>
</head>
<form action="http://localhost:8000/oims/stu_save.jsp" method="POST" onsubmit="return validation()">
<center>
<fieldset style="width:auto;background:rgb(251,252,188); text-align:center;"><br/>
<h2 style="color:rgb(234,9,48);text-align:center;"> STUDENT DETAILS ENTRY</h2>

<fieldset style="width:auto;background:rgb(251,252,188); text-align:center;"><br/>
<legend>Corse-Batch details</legend>
<table border='0' width='600' cellspacing='5' cellpadding='5'>
<tr><td><b> Form No. </b></td><td> <input type="text" name="form_no" id="form_no" ></td>
<td><b>Select Course </b></td><td> <select name="course" id="course" onchange='getPrice()'><option>Select Course</option>

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

<%	
try{
	ResultSet rs=stmt.executeQuery("select course_code from course");
	while(rs.next())
	{
	out.println("<option>"+rs.getString(1)+"</option>");
	}
	out.println("</select></td></tr>");
	ResultSet rs1=stmt.executeQuery("select batch_name from batch");
	out.println("<tr><td><b>Select  Batch </b></td><td><select name='batch_name' id='batch_name' ><option>Select Batch</option>");
	while(rs1.next())
	{
	out.println("<option>"+rs1.getString(1)+"</option>");
	}
	out.println("</select></td> <td><b> Registation Fee </b></td><td><input type='text' name='registation' id='registation'></td></tr>");
  }
catch(Exception e){
out.println("<hr>Exception<hr>"+e);
}
%>

<tr><td><b> Payment Mode </td><td> <input type="radio" name="mode" id="pay1" value='Down' onclick="getPrice()"> Down Pay <input type="radio" name="mode" id="pay2" value='Installment' onclick='getPrice()' checked> Inst. Pay </td><td id='td1'></td><td id='td2'></td></br> </td></tr>
<input type="hidden" id="insamt" name="insamt">

</table>

</fieldset>

<fieldset style="width:auto;background:rgb(251,252,188); text-align:center;"><br/>
<legend>Personal details</legend>
<table>
<tr><td><b> Name </b></td><td><input type="text" name="name" id="name" onfocus='checkamt()'></tr>
<tr><td><b> Father's Name </b></td><td> <input type="text" name="father_name" id="father_name" onfocus='checkamt()' ></tr>
<tr><td><b> Address </b></td><td><textarea cols="15" rows="3" name="address" id="address" > </textarea></td></tr>
<tr><td><b> Sex </b></td><td> <input type="radio" name="sex" id="sex1" value='Male' CHECKED>Male<input type="radio" name="sex" id="sex2" value='Female'>Female</td> </tr>
<tr><td><b>Date of birth (DD-MM-YYYY)</td><td><input type="text" name="dob" id="dob" ></td></tr>
<tr><td><b> Education Qualification </b></td><td> <input type="text" name="education" id="education"  ></td> </tr>
<tr><td><b> Occapation </b></td><td> <input tupe="text" name="occu" id="occu"  ></td></tr>
<tr><td><b> Phono no. </b></td><td> <input type="text" name="mobile" id="mobile" onfocus='checkamt()' ></td></tr>
<tr><td><b> Email id </b></td><td> <input type="text" name="email" id="email"  ></td></tr>
<input type="hidden" id="ddob" name="ddob">
</table>
</fieldset>
<br/>

<input type="submit" value=" Store " style="width:70;height:30;">
<input type="reset" value=" Clear All " style="width:70;height:30;">
<a href="homepage.jsp"><input type="button" value="Cancel" style="width:70;height:30;"></a>


</center>
</FORM>
</html>

<%@ include file="../oims/footer.html" %>
<%
}
%>
