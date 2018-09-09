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
<title BGCOLOR="RED">course entry</title>
<script type ="text/javascript" src="javascript.js"></script>
</head>
<form action="http://localhost:8000/oims/course_save.jsp" Method="Post" onsubmit="return courseval()">
<center>
<fieldset style="width:500;background:rgb(251,252,188); text-align:center;"><br/>
<h2 style="color:rgb(234,9,48);text-align:center;"> COURSE  ENTRY</h2>
<hr>
<table border='0' cellspacing='2'>
<tr><td><b> Course  Code</b></td><td> <input type="text" name="cc" id="cc" ></td></tr>
<tr><td><b> Course Name </b></td><td> <input type="text" name="cn" id="cn" ></td></tr>
<tr><td><b> Duration </b></td><td><input type="text" name="du" id="du" ></td></tr>
<tr><td><b> Down Payment </b></td><td> <input type="text" name="dp" id="dp"  ></td></tr>
<tr><td><b> Installment Payment </b></td><td> <input type="text" name="ip" id="ip"  ></td></tr>
<tr><td><b> Description </b></td><td> <textarea cols="15" rows="3" name="desc" id="desc" > </textarea></td></tr>


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

