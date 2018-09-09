<%@ include file="header.html" %>
<%@ page import='java.sql.*' %>
<center>
<fieldset style="width:500;background:rgb(251,252,188); text-align:center;"><br/>
<h2 style="color:rgb(234,9,48);text-align:center;"> BATCH SERACH  </h2>

<table border='0' cellspacing='2'>

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
String batch_name=request.getParameter("batch_name");
ResultSet rs1=stmt.executeQuery("select COUNT(batch_name) from batch where batch_name='"+batch_name+"'");
Boolean row=rs1.next();
if(rs1.getInt(1)==1)
{
ResultSet rs=stmt.executeQuery("select * from batch where batch_name='"+batch_name+"'");
out.println("<br/><table style='allign:left; width:500px;font-size:15px; '  bordercolor='green' border='1' cellspacing='1' cellpadding='3'>");
while(rs.next())
{
		out.println("<tr bgcolor='white'><td>Batch Name	</td><td> "+rs.getString(1)+"</td></tr>	              <tr bgcolor='LIGHTGRAY'><td>Course	</td><td> "+rs.getString(2)+"</td></tr>		<tr  bgcolor='white'><td>Teacher id 	</td><td>"+rs.getString(3)+"</td></tr>                      <tr bgcolor='LIGHTGRAY'><td>Batch time  	</td><td>"+rs.getString(4)+"</td></tr>                  <tr bgcolor='white'><td>Batch description </td><td>"+rs.getString(5)+"</td></tr>");
}
out.println("</TABLE><BR/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href='homepage.jsp'><input type='button' value='Cancel' style='width:100px;height:30px;text-align:center;'></a></fieldset></center></form>");
}
else
	{
	out.println("<BR/><tr><td colspan='2'><h3 style='text-align:center'>Batch name does not Fount !<br/>Please Enter correct batch name ?</h3></td></tr></table>");
out.println("<br/><br/><br/><table border='0'><tr><td><b><a href='batch_search_batch.jsp'><input type='button' style='width:250px;height:40px;font-size:25;text-align:center' value='Do you want to next batch search'> </a></b></td><td> <a href='homepage.jsp'><input type='button' style='width:250px;height:40px;font-size:25; text-align:center' value='Cancle'> </a></table><br/><br/><br/><br/><br/>");
}	
}

catch(Exception e){
out.println("<hr>Exception of sql :<hr>"+e);
}

%>
<%@ include file="footer.html" %>



