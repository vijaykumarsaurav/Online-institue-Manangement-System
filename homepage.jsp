
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

<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html xmlns='http://www.w3.org/1999/xhtml' xml:lang='en' lang='en' xlmns:og='http://ogp.me/ns#'
xlmns:fb='http://www.facebook.com/2008/fbml' class=''>
<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html xmlns='http://www.w3.org/1999/xhtml'>

<meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1' />

<link rel='stylesheet' href='add/styles.css' type='text/css' />
<link rel='stylesheet' href='add/style1.css' type='text/css' />
<link rel='stylesheet' href='add/style.css' type='text/css' />
<html>

<body style 'font-size:30;border='20';'>

<div id='main'>

 <div id='one'>

		<h1 style='text-align:center;color:GREEN;font-size:40px'><b>Online Institute Management System</h1>

            <h3 style='text-align:center;color:yellow;font-size:15px'>Byte Computer, Pani Tanki chauk,Muzaffarpur - 842001</b></h3>

	</div>

<div id='main1'>
		<div class='menu' style='font-size: 16px;'>
		<ul>
			<li><a href='homepage.jsp' ><b>Home</b></a></li>

			<li><a href='#' id='current'><b>Student</b></a>
				<ul>
					<li><a href='stu_entry.jsp'>Registation </a></li>
					<li><a href='student_modify_search.jsp'>Modification</a></li>
					<li><a href='student_delete_search.jsp'>Delete </a></li>
					<li><a href='student_display_search.jsp'>Form no.wise Display</a></li>
					<li><a href='student_show_all.jsp'>All Display</a></li>
			        </ul>
		  	</li>

		<li><a href='#'><b>Emp.</b></a>
                <ul>
					<li><a href='t_entry.jsp'>Teacher entry </a></li>
					<li><a href='emp_entry.jsp'>Other Employee </a></li>
					<li><a href='tea_display_search.jsp'>Teacher Show</a></li>
					<li><a href='emp_display_search.jsp'>Other Employee Show</a></li>
					<li><a href='tea_delete_search.jsp'>Teacher Delete </a></li>
					<li><a href='emp_delete_search.jsp'>Other Employee Delete </a></li>
					<li><a href='tea_show_all.jsp'>All Teacher Show</a></li>
					<li><a href='emp_show_all.jsp'>All Other Emp. Show</a></li>

				</ul>

	          </li>


		<li><a href='#'><b>Course </b></a>
			<ul>
					<li><a href='course_entry.jsp'>Course entry </a></li>
					<li><a href='course_modify_search.jsp'>Modification</a></li>
					<li><a href='course_delete_search.jsp'>Delete </a></li>
					<li><a href='course_display_search.jsp'>Course wise Report </a></li>
					<li><a href='course_show.jsp'>All course details </a></li>

			</ul>
		</li>
			<li><a href='#'><b>Batch </b></a>
			<ul>
					<li><a href='batch_entry.jsp'>Make Batch</a></li>
					<li><a href='batch_modify_search.jsp'>Modify Batch </a></li>
					<li><a href='batch_delete_search.jsp'>Delete  batch</a></li>
					<li><a href='batch_search_batch.jsp'>Batch wise show  </a></li>
					<li><a href='batch_show_all.jsp'>Show all batch</a></li>
			</ul>
		</li>



			<li><a href='#'><b>Enqury</b></a>
			<ul>
					<li><a href='student_display_search.jsp'>Form no.wise Display</a></li>
					<li><a href='student_show_all_payment.jsp'>All Student payment details</a></li>
					<li><a href='batch_student_search.jsp'>Batch wise students </a></li>

			 </li>
			</ul>


		<li><a href='#'><b>Collection</b></a>
			<ul>
                	<li><a href='collection_search.jsp'>Fee Collection </a></li>
					<li><a href='collection_duration_search.jsp'>Show Collection Date Wise</a></li>
					<li><a href='student_show_all_collection.jsp'>All Collections  date wise</a></li>

			</li>
		      </ul>

		<li><a href='#'><b>Expenses</b></a>
			<ul>
                	<li><a href='expense_entry.jsp'>Particular wise </a></li>
                	<li><a href='expense_duration_search.jsp'>Duration Wise show </a></li>
                	<li><a href='expense_delete_duration_wise.jsp'>Duration Wise Delete </a></li>
                	<li><a href='tea_salary_search.jsp'>Teacher Salary paid </a></li>
                	<li><a href='emp_salary_search.jsp'>Other Emp. Salary paid </a></li>
                	<li><a href='emp_tea_duration_search.jsp'>Duration wise emp paid salary </a></li>

			</li>
		      </ul>

		<li><a href='#'><b>Income</b></a>
			<ul>
					<li><a href='income_duration_search.jsp'>Duration wise </a></li>
			</li>
			</ul>
	<li><a href='#'><b>Admin</b></a>
			<ul>
                	<li><a href='change_password.jsp'><b>Change Password</b></a></li>
					<li><a href='logout.jsp'><b>Logout</b></a></li>
			</ul>
	</li>


</li>

</div>
	<br>
<br><br><br>


        <div id='leftmenu'>

        <div id='leftmenu_top'></div>

				<div id='leftmenu_main'>

                <h3><blink>Hot Links</blink></h3>

                <ul>
                    <li><a href='stu_entry.jsp'>Student Registation</a></li>
                    <li><a href='course_show.jsp'>Course Detais</a></li>
                    <li><a href='batch_entry.jsp'>Make Batch </a></li>
                    <li><a href='batch_show_all.jsp'>Batch Show</a></li>
                    <li><a href='collection_duration_search.jsp'>Student fee status </a></li>
					<li><a href='emp_tea_duration_search.jsp'> Employee Payment details </a></li>
                    <li><a href='collection_search.jsp'>Student fee collection</a></li>
                    <li><a href='expense_entry.jsp'>Expense Particular</a></li>
				    <li><a href='income_duration_search.jsp'> Over All Income/Exp. show</a></li>

                </ul>
</div>


              <div id='leftmenu_bottom'></div>
<br><br>
        </div>

        <br>
        <div id='content'>


        <div id='content_top'></div>
        <div id='content_main'>

<!--	<img src='add/8.jpg' width='655px' height='390px' >-->



       <marquee scrollamount='5' onmouseover=this.stop() onmouseout=this.start() behavior="scroll" scrollamount="5" direction="down" direction='left' width='655' height='390'><img src='add/1.jpg;'  width='655' height='390'/><img src='add/2.jpg;' width='655' height='390'/><img src='add/3.jpg;'  width='655' height='390'/><img src='add/4.jpg;' width='655' height='390'/><img src='add/5.jpg;'  width='655' height='390'/><img src='add/6.jpg;' width='655' height='390'/><img src='add/7.jpg;' width='655' height='390'/><img src='add/9.jpg' width='655px' height='390px' ><img src='add/10.jpg' width='655px' height='390px' ><img src='add/8.jpg' width='655px' height='390px' ></marquee>






        </div>
        <div id='content_bottom'></div>

            <div id='footer'></div>
      </div>
   </div>

   </div>


<br/><br/><br/><br/><br/><br/><br/><br/><br/>
<h3 style='text-align:right'>Developed by:- Vijay Kumar  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h3>
</body>

</html>
<%
}
%>