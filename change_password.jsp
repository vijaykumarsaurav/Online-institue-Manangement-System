
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
<br>
<title BGCOLOR="RED">login change </title>
<script type ="text/javascript" src="javascript.js"></script>
</head>

<form id='f1' name ='f1' action='chage_login_process.jsp' method ='POST' onsubmit="return conformation()">

<center>
<fieldset style="width:auto;background:rgb(251,252,188);text-align:center;">
<legend>Change usernamd and password </legend> 
</br></br>
<table border="0" cellpadding="5" cellspacing="5" width="400" height="250" bordercolor="red" style="background:rgb(240,240,170);">
<tr><th colspan="2" style="color:rgb(234,9,48);text-align:center;font-size:22px"><b>Change Login Details </th></tr>

<tr><td style="text-align:center"><b>Current  Username  &nbsp&nbsp&nbsp</b></td> <td style="text-align:center"> <input type='text' name="user" id="user"></td></tr>
<tr><td style="text-align:center"><b>Current Password &nbsp&nbsp&nbsp&nbsp</b></td> <td style="text-align:center"> <input type='text' name="pass" id="pass"></td></tr></b>


<tr><td><b>&nbsp&nbsp&nbsp&nbsp&nbsp New  Username  </b></td> <td style="text-align:center"> <input type='text' name="nuser" id="nuser"></td></tr>
<tr><td><b>&nbsp&nbsp&nbsp&nbsp&nbsp New Password </b></td> <td style="text-align:center"> <input type='text' name="npass" id="npass"></td></tr></b>
</table></br>
<input type="submit" value="Chage"  style="width:100px;height:30px;text-align:center;font-size:17px">&nbsp&nbsp&nbsp
<input type="reset" value="Clear" style="width:100px;height:30px;text-align:center;font-size:17px">&nbsp&nbsp&nbsp
<a href="homepage.jsp"><input type="button" value="Cancel" style="width:100px;height:30px;text-align:center;font-size:17px"></a>

</br></br>
</fieldset>
</center>

</form>
<%@ include file="footer.html" %>
<%
}
%>