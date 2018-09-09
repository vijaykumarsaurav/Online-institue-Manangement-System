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

<html>
<head>
<title BGCOLOR="RED">STUDENT ENTRY</title>
<script type ="text/javascript" src="javascript.js"></script>
</head>


<form action="http://localhost:8000/oims/emp_save.jsp" Method="Post" onsubmit="return empval()">
<center>
<fieldset style="width:500;background:rgb(251,252,188); text-align:center;"><br/>
<h2 style="color:rgb(234,9,48);text-align:center;"> EMPLOYEE  ENTRY</h2>
<hr>
<table border='0' cellspacing='2'>
<tr><td><b> Emp id. </b></td><td> <input type="text" name="ei" id="ei" ></td>
<tr><td><b> Post </b></td><td> <select name="po" id="po" ><option>Select Post</option><option>Resepsnist </option><option>Pueon </option></select></tr>
<tr><td><b> Salary </b></td><td> <input type="text" name="sal" id="sal" ></td>
<tr><td><b> Name </b></td><td><input type="text" name="en" id="en" ></tr>
<tr><td><b> Father's Name </b></td><td> <input type="text" name="ef" id="ef"  ></tr>
<tr><td><b> Address </b></td><td> <textarea cols="15" rows="2" name="eadd" id="eadd" ></textarea></td></tr>
<tr><td><b> Sex </b></td><td> <input type="radio" name="esex" id="esexm" value='Male' checked>Male<input type="radio" name="esex" id="esexf" value='Female'>Female</td> </tr>
<tr><td><b>Date of birth(DD-MM-YYYY)</td><td><input type="text" name="edob" id="edob" ><input type="hidden" name="dob" id="dob" ></td></tr>
<tr><td><b> Education Qualification </b></td><td> <input type="text" name="eedu" id="eedu"  ></td> </tr>
<tr><td><b> Occapation </b></td><td> <input tupe="text" name="eocc" id="eocc"  ></td></tr>
<tr><td><b> Phono no. </b></td><td> <input type="text" name="eph" id="eph" ></td></tr>
<tr><td><b> Email id </b></td><td> <input type="text" name="eemail" id="eemail"  ></td></tr>

</table>

<br/>
<hr>
<input type="submit" value="Save" style="width:70;height:30;">
<input type="reset" value="Reset" style="width:70;height:30;">
<a href="homepage.jsp"><input type="button" value="Cancel" style="width:70;height:30;"></a>

</fieldset>
</center>

<%@ include file="../oims/footer.html" %>

<%
}
%>



