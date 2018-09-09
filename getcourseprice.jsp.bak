
<%@ page import='java.sql.*' %>
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

<%	try{
String course=request.getParameter("course");
ResultSet rs=stmt.executeQuery("select  down_payment,installment_payment from course where course_code='"+course+"'");
while(rs.next())
{
	out.println(rs.getInt(1)+","+rs.getInt(2));
}

}
catch(Exception e){
out.println("Exception"+e);
}
%>