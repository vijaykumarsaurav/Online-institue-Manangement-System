<%@ include file="header.html" %>
<%@ page import='java.text.*' %>
<%@ page import='java.sql.*' %>
<html>
<head>
<title>course save </title>
</head>
<body>
	<fieldset style='width:auto;background:rgb(251,252,188); text-align:center;'>
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

 String form_no=request.getParameter("form_no");	
 String course=request.getParameter("course");
 String batch_name=request.getParameter("batch_name");	
 String name=request.getParameter("name");
 String father_name=request.getParameter("father_name");	
 String address=request.getParameter("address");
 String sex=request.getParameter("sex");	
 String dob=request.getParameter("ddob");
 String education=request.getParameter("education");	
 String occu=request.getParameter("occu");
 String mobile=request.getParameter("mobile");	
 String email=request.getParameter("email");
 String mode=request.getParameter("mode");
 String registation=request.getParameter("registation");

String am="",intt="";
int reg=Integer.parseInt(registation);
int paid=0,credit=0,total=0,ins=0;

 if(mode.equals("Down"))
 {
	 am=request.getParameter("downamt");
	 paid=Integer.parseInt(am);
	 credit=0;
 } 
 
if(mode.equals("Installment"))
 {
    am=request.getParameter("amount");
	paid=Integer.parseInt(am);
	intt=request.getParameter("insamt");
	ins=Integer.parseInt(intt);
	credit=ins-paid;
 }
 total=paid+reg;

DateFormat df1 = new SimpleDateFormat("yyyy-MM-dd");
String dat = df1.format(new java.util.Date());
int ch1=0,ch2=0,ch3=0;
		 	try{
				String sql1="insert into student values('"+form_no+"'" +","+ "'"+course+"'"+","+"'"+batch_name+"'"+","+"'"+name+"'"+","+"'" +father_name+ "'"+","+"'"+address+"'"+","+"'"+sex+"'"+","+"'"+dob+"'"+","+"'"+education+"'"+","+"'"+occu+"'"+"," +"'"+mobile+"'"+","+"'"+email+"'"+","+"'"+dat+"'"  +")";

				String sql2="insert into payment values('"+form_no+"'" +","+ "'"+mode+"'"+","+registation+","+paid+","+credit+","+total+","+"'"+dat+"'"+ ")";

				String sql3="insert into allcollection values('"+form_no+"'" +","+ "'"+name+"'"+"," +"'"+father_name+"'"+ ","+"'" +course+"'"+","+"'" +batch_name+ "'"+","+total+","+credit+","+"'"+dat+"')";


				ch1=stmt.executeUpdate(sql1);
				ch2=stmt.executeUpdate(sql2);
				ch3=stmt.executeUpdate(sql3);
	
				if(ch1==1 && ch2==1 && ch3==1)
				out.println("<br/><br/><br/><h2 style='color:rgb(234,9,48);text-align:center;'> All the student  details are sucessfully saved  </h2>");	
				}
				catch(SQLException e)
				{
				out.println("<br/><br/><br/><h2 style='color:rgb(234,9,48);text-align:center;'>Unsucess to save student details !<br/> Please enter currect details or unique form number ! </h2>\n");
				}
	    
	
%>

<br/><br/><br/>
<table border='0'>
<tr><td><b><a href='stu_entry.jsp'> <input type="button" style="width:200px;height:40px;font-size:25;text-align:center" value="Do you want to next entry" ></a><input type="button" style="width:150px;height:40px;font-size:25;text-align:center" value="Go Back" onclick="history.go(-1);"> </b></td><td> <a href="homepage.jsp"><input type="button" style="width:150px;height:40px;font-size:25; text-align:center" value="Cancle"> </a>

</table>
<br/><br/><br/><br/><br/>
</fieldset>


<%@ include file="footer.html" %>


