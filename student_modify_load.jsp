<%@ include file="../oims/header.html" %>
<%@ page import='java.sql.*' %>
<title BGCOLOR="RED">STUDENT MODIFY</title>
<script type ="text/javascript" src="javascript.js"></script>
</head>
<form action="http://localhost:8000/oims/student_modify_update.jsp" method="post"  onsubmit="return stu_modify()">
<center>

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
try{
String form_no=request.getParameter("form_no");
out.println("<input type='hidden' name='form_no' value='"+form_no+"'>");
ResultSet rs1=stmt.executeQuery("select COUNT(form_no) from student where form_no='"+form_no+"'");
Boolean row=rs1.next();
if(rs1.getInt(1)==1)
{
out.println("<fieldset style='width:auto;background:rgb(251,252,188); text-align:center;'><br/><h2 style='color:rgb(234,9,48);text-align:center;'> STUDENT MODIFY ENTRY</h2>");
ResultSet rs=stmt.executeQuery("select * from student where form_no='"+form_no+"'");

while(rs.next())
{

out.println("<fieldset style='width:auto;background:rgb(251,252,188); text-align:center;'><br/><legend>Personal details</legend><table>");
out.println("<tr><td><b> Form No. </b></td><td>"+rs.getString(1)+"</td></tr><tr><td><b> Name </b></td><td><input type='text' name='name' id='name' value='"+rs.getString(4)+"'></tr><tr><td><b> Father's Name </b></td><td> <input type='text' name='father_name' id='father_name'  value='"+rs.getString(5)+"'></tr><tr><td><b> Address </b></td><td><textarea cols='15' rows='3' name='address' id='address' >"+rs.getString(6)+" </textarea></td></tr>");
if(rs.getString(7).equals("Male"))
out.println("<tr><td><b> Sex </b></td><td> <input type='radio' name='sex' id='sex1' value='Male' CHECKED>Male<input type='radio' name='sex' id='sex2' value='Female'>Female</td> </tr>");
else
out.println("<tr><td><b> Sex </b></td><td> <input type='radio' name='sex' id='sex1' value='Male'>Male<input type='radio' name='sex' id='sex2' value='Female' checked>Female</td> </tr>");
out.println("<tr><td><b>Date of birth(DD-MM-YYYY)</td><td><input type='text' name='dob' id='dob' value='"+rs.getString(8)+"'></td></tr><tr><td><b> Education Qualification </b></td><td> <input type='text' name='education' id='education'  value='"+rs.getString(9)+"'></td> </tr><tr><td><b> Occapation </b></td><td> <input tupe='text' name='occu' id='occu'  value='"+rs.getString(10)+"'></td></tr><tr><td><b> Phono no. </b></td><td> <input type='text' name='mobile' id='mobile' value='"+rs.getString(11)+"'></td></tr><tr><td><b> Email id </b></td><td> <input type='text' name='email' id='email'  value='"+rs.getString(12)+"'></table><br/>");
}
out.println("</table><br/><input type='submit' value=' Modify ' style='width:100px;height:30px;text-align:center;'>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href='homepage.jsp'><input type='button' value='Cancel' style='width:100px;height:30px;text-align:center;'></a></fieldset></fieldset></center></form>");
}
else
	{
	out.println("<tr><td colspan='2'><h2 style='text-align:center'>Form number does not Fount !<br/>Please Enter currect From no. ?</h2></td></tr></table>");
out.println("<br/><br/><br/><table border='0'><tr><td><b><a href='student_modify_search.jsp'><input type='button' style='width:250px;height:40px;font-size:25;text-align:center' value='Do you want to next student modify '> </a></b></td><td> <a href='homepage.jsp'><input type='button' style='width:250px;height:40px;font-size:25; text-align:center' value='Cancle'> </a></table><br/><br/><br/><br/><br/>");
}	
}

catch(Exception e){
out.println("<hr>Exception of sql :<hr>"+e);
}

%>

<%@ include file="../oims/footer.html" %>



