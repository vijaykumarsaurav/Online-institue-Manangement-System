<%@ page import='java.sql.*' %>
<html>

<body>
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
String duser="";
String dpass="";

	String user=request.getParameter("user");
	String pass=request.getParameter("pass");


try
	{
			
		ResultSet rs=stmt.executeQuery("select * from login");
		while(rs.next())
		{
			duser=rs.getString(1);
			dpass=rs.getString(2);
		}
		if(user.equals(duser) && pass.equals(dpass))
		{
					HttpSession session1=request.getSession(true);
					Integer count1=(Integer)session.getValue("tracker.count");
					if(count1==null)
						count1=new Integer(1);
					else
					count1=new Integer(count1.intValue()+1);
					session1.putValue("tracker.count",count1);


%>

				<%@ include file='homepage.jsp'%>

<%		
			
		}
		else 
		{
%>
		<%@ include file='login.jsp'%>
		
<%		out.println("<br/><h4 style='color:red;text-align:center'>Username amd Password are wrong !<br/>Please enter currect username and password </h4>");
		}
}		
catch(Exception e)
{
		stmt.executeUpdate("create table login(username  varchar(30),password varchar(30))");
		stmt.executeUpdate("insert into login values('oims','oims')");
		
		stmt.executeUpdate("create table tea_sal(emp_id varchar(30),amount float,dat date)");	
		stmt.executeUpdate("create table emp_sal(emp_id varchar(30),amount float,dat date)");	
		stmt.executeUpdate("create table expense(dat date ,particular varchar(200),amount float)");	
		stmt.executeUpdate("create table allcollection(form_no varchar(30) ,name varchar(30),father varchar(30),batch varchar(30),course varchar(30),paid float,credit float,dat date)");	
		stmt.executeUpdate("create table payment(form_no varchar(30) ,mode varchar(20),registation float,paid float,credit float,total float,dat date)");	
		stmt.executeUpdate("create table student(form_no varchar(30) primary key,course varchar(30),batch_name varchar(50),name varchar(100),father_name varchar(100),address varchar(200),sex varchar(10),dob date,education varchar(60),occu varchar(60),mobile varchar(15),email varchar(100),dat date)");	
		stmt.executeUpdate("create table teacher(tea_id varchar(30) primary key,course varchar(50),salary float,name varchar(100),fname varchar(100),address varchar(200),sex varchar(30),dob date,edu varchar(50),occu varchar(100),mobile varchar(15),email varchar(100),dat date)");	
		stmt.executeUpdate("create table course(course_code varchar(30) primary key,course_name varchar(100),duration varchar(50),down_payment float,installment_payment float,description varchar(200))");	
		stmt.executeUpdate("create table employee(emp_id varchar(30) primary key,post varchar(50),salary float,name varchar(100),father_name varchar(100),address varchar(200),sex varchar(30),date_of_birth date,education_quali varchar(50),occupation varchar(100),ph_no varchar(15),email varchar(100),dat date)");	
		stmt.executeUpdate("create table batch(batch_name varchar(30) primary key,course varchar(100),tea_id varchar(100),batch_time varchar(30),description varchar(200))");	

		ResultSet rs=stmt.executeQuery("select * from login");
		while(rs.next())
		{
			duser=rs.getString(1);
			dpass=rs.getString(2);
		}
		if(user.equals(duser) && pass.equals(dpass))
		{
					HttpSession session1=request.getSession(true);
					Integer count1=(Integer)session.getValue("tracker.count");
					if(count1==null)
						count1=new Integer(1);
					else
					count1=new Integer(count1.intValue()+1);
					session1.putValue("tracker.count",count1);
			
		
%>

				<%@ include file='homepage.jsp'%>

<%		
		}
		else 
		{
%>
		<%@ include file='login.jsp'%>
		
<%		out.println("<br/><h4 style='color:red;text-align:center'>Username amd Password are wrong !<br/>Please enter currect username and password </h4>");
		}



}
%>