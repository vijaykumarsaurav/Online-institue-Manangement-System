
<%@ include file="loginheader.jsp" %>
<%@ page import='java.sql.*' %>
<title BGCOLOR="RED">BATCH SEARCH</title>
<script type ="text/javascript" src="javascript.js"></script>

<script type ='text/javascript'>
function conformation()
{
if(document.getElementById("user").value=="")
{
alert("Please enter username !");
return false;
}
if(document.getElementById("pass").value=="")
{
alert("Please enter password !");
return false;
}
}


</script>

</head>
<form id='f1' name ='f1' action='loginprocess.jsp' method ='POST' onsubmit="return conformation()">

<center>
<fieldset style="width:auto;background:rgb(251,252,188);text-align:center;">
<legend>Login verification  </legend> 
</br></br></br></br>
<table border="0" cellpadding="5" cellspacing="5" width="400" height="150" bordercolor="red" style="background:rgb(240,240,170);">
<tr><th colspan="2" style="color:rgb(234,9,48);text-align:center;font-size:22px"><b>User Login </th></tr>

<tr><td style="text-align:center"><b>Username  &nbsp&nbsp&nbsp</b></td> <td style="text-align:center"> <input type='text' name="user" id="user"></td></tr>
<tr><td style="text-align:center"><b>Password &nbsp&nbsp&nbsp&nbsp</b></td> <td style="text-align:center"> <input type='password' name="pass" id="pass"></td></tr></b>
</table>
<br/><br/>
<input type="submit" value="Login"  style="width:100px;height:30px;text-align:center;font-size:17px">&nbsp&nbsp&nbsp
<input type="reset" value="Clear" style="width:100px;height:30px;text-align:center;font-size:17px">&nbsp&nbsp&nbsp

</br></br></br></br>
</fieldset>
</center>
</form>
<%@ include file="loginfooter.jsp" %>
