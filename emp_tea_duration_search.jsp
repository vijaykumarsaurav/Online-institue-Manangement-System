
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

<%@ include file="header.html" %>
<%@ page import='java.sql.*' %>
<script type ="text/javascript" src="javascript.js"></script>
</head> 
<title BGCOLOR="RED">salary paid</title>
<script type ="text/javascript" src="javascript.js"></script>
</head> 
<form action="http://localhost:8000/oims/emp_tea_duration_wise.jsp" method="post" onsubmit="return collectionval()">
<center>
<fieldset style="width:auto;background:rgb(251,252,188);text-align:center">
<legend>Salary paid search </legend> 
</br></br>
<table border="1" cellpadding="5" cellspacing="5" width="400" height="250" bordercolor="red" style="background:rgb(240,240,170);">
<tr><th colspan="2" style="color:rgb(234,9,48);text-align:center;font-size:18px"><b>DURATION WISE SALARY PAID SHOW</th></tr>

<tr><td style="text-align:center"><b>From Date &nbsp&nbsp&nbsp(DD-MM-YYYY)</b></td> <td style="text-align:center"> <input type='text' name="from_date" id="from_date"><input type='hidden' name="fdate" id="fdate"></td></tr>
<tr><td style="text-align:center"><b>To Date &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp(DD-MM-YYYY)</b></td> <td style="text-align:center"> <input type='text' name="to_date" id="to_date"><input type='hidden' name="tdate" id="tdate"></td></tr>


<tr><td style="text-align:center"><input type="submit" value="SUBMIT"  style="width:100px;height:30px;text-align:center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
</td><td style="text-align:center"><a href="homepage.jsp"><input type="button" value="Cancel" style="width:100px;height:30px;text-align:center" ></a></td></tr>
</table>
</br></br></br></br>
</fieldset>
</center>
</form>
<%@ include file="footer.html" %>


<%
}
%>