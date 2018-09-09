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
<title BGCOLOR="RED">Teacher entry</title>
<script type ="text/javascript" src="javascript.js"></script>
</head>
 <form action="http://localhost:8000/oims/t_save.jsp" method="POST" onsubmit="return teaval()">
<center>
<fieldset style="width:500;background:rgb(251,252,188); text-align:center;"><br/>
<h2 style="color:rgb(234,9,48);text-align:center;"> TEACHER  ENTRY</h2>
<hr>
<table border='0' cellspacing='2'>
<tr><td><b> Teacher id </b></td><td> <input type="text" name="tid" id="tid" ></td>
<tr><td><b> Teaching Course </b></td><td> <select name="tc" id="tc" ><option>select course </option>
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
}
catch(Exception e){
out.println("<hr>Exception<hr>"+e);
}
%>

</select></tr>


<tr><td><b> Salary </b></td><td> <input type="text" name="tsal" id="tsal" ></td>
<tr><td><b> Name </b></td><td><input type="text" name="tn" id="tn" ></tr>
<tr><td><b> Father's Name </b></td><td> <input type="text" name="tf" id="tf"  ></tr>
<tr><td><b> Address </b></td><td> <textarea cols="15" rows="2" name="tadd" id="tadd"></textarea></td></tr>
<tr><td><b> Sex </b></td><td> <input type="radio" name="tsex" id="tsexm" value='Male' checked>Male<input type="radio" name="tsex" id="tsexf" value='Female'>Female</td> </tr>
<tr><td><b>Date of birth(DD-MM-YYYY)</td><td><input type="text" name="dob" id="dob" ></td><input type="hidden" name="tdob" id="tdob"  ></tr>
<tr><td><b> Education Qualification </b></td><td> <input type="text" name="tedu" id="tedu"  ></td> </tr>
<tr><td><b> Occapation </b></td><td> <input tupe="text" name="tocc" id="tocc"  ></td></tr>
<tr><td><b> Phono no. </b></td><td> <input type="text" name="tph" id="tph" ></td></tr>
<tr><td><b> Email id </b></td><td> <input type="text" name="temail" id="temail"  ></td></tr>

</table>

<br/>
<hr>
<input type="submit" value="Save" style="width:70;height:30;">
<input type="reset" value="Reset" style="width:70;height:30;">
<a href="homepage.jsp"><input type="button" value="Cancel" style="width:70;height:30;"></a>

</fieldset>
</center>
</FORM>


<%@ include file="../oims/footer.html" %>
<%
}
%>