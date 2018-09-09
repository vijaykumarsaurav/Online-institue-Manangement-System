
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
<%@ page import='java.text.*' %>
<html>
<head>
<title BGCOLOR="RED">EXPENSES ENTRY</title>
<script type ="text/javascript" src="javascript.js"></script>
</head>
<form action="http://localhost:8000/oims/expense_save.jsp" Method="Post" onsubmit='return exp_validation()'>
<center>
<fieldset style="width:500;background:rgb(251,252,188); text-align:center;"><br/>
<h2 style="color:rgb(234,9,48);text-align:center;"> EXPENSES  ENTRY</h2>
<hr>
<table border='0' cellspacing='2'>
<% 

DateFormat df1 = new SimpleDateFormat("yyyy-MM-dd");
String dat = df1.format(new java.util.Date());

out.println("<tr><td><b> Date </b></td><td>"+dat+"</td></tr>");
%>
<tr><td><b> Description </b></td><td> <textarea cols="15" rows="3" name="desc" id="desc" > </textarea></td></tr>

<tr><td><b>Amount </b></td><td> <input type="text" name="amount" id="amount"  ></td></tr>


</table>

<br/>
<hr/>
<input type="submit" value="Save" style="width:70;height:30;">
<input type="reset" value="Reset" style="width:70;height:30;">
<a href="homepage.jsp"><input type="button" value="Cancel" style="width:70;height:30;"></a>

</fieldset>
</center>
</form>
<%@ include file="../oims/footer.html" %>
<%
}
%>
