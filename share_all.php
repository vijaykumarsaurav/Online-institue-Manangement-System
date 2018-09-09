<?php
	
	$con= mysql_connect('localhost','root','');
	$flag = mysql_select_db('vijay',$con);

	$count=	"select COUNT(course_code) from course";
	$res1=mysql_query($count,$con);
	$coun =mysql_fetch_array($res1);
	
	if($coun[0]>=1)
	{
		$sql="select *  from course";
		$res=mysql_query($sql,$con);
		$c=1;
		
				echo "<head><title BGCOLOR='RED'>SHARE A/C DETAILS   </title>
				</head>
				<body bgcolor='pink'>
				<form action='share_display.php' method='POST'>				
				<center style='font: 100%/1.4 tahoma, arial, helvetica, lucida sans, sans-serif; font-size:23;'><b>INSTITUTE MANAGEMENT SYSTEM</b></center>
				<center style='font: 100%/1.4 tahoma, arial, helvetica, lucida sans, sans-serif; font-size:13;'>CIN No : U45200BR2012PTCO18439<br/>
				Head Office : Aghoria Bazar Chowk,Arti complex Amgola Road,Muzaffarpur</br>
				Regd under company act ,1956	
				</center>
				<br/>
 				<center style=' font-size:18;'><u><b>ALL SHARE HOLDER'S DETAILS  </u></b></center>
	
				<center>	<table style='allign:left' BORDER='3' bordercolor='green' cellspacing='0' cellpadding ='4'>
				<tr bgcolor='green'><td>Sr.no.</td><td>Course code</td><td>Course Name </td><td>Duration</td><td>Down Payment</td><td>Installment Payment</td><td>Course Description</td></tr>";
				$flag=0;
				while($row=mysql_fetch_array($res))
				{
						

					if($flag==0)
					{
					echo "";
					echo "<tr bgcolor='darer 25%'><td>$c</td><td> <a href='share_display.php?reg=$row[0]'>$row[0]</a></td><td>$row[1]</td><td>$row[2]</td><td> $row[3]</td><td>$row[4]</td><td>$row[5]</td></tr>";
					$flag=1;
					}	
					else
					{ 				
					echo "<tr bgcolor='white'><td>$c</td><td><a href='share_display.php?reg=$row[0]'>$row[0]</a></td><td>$row[1]</td><td>$row[2]</td><td> $row[3]</td><td>$row[4]</td><td>$row[5]</td></tr>";
					$flag=0;					
					}
					$c=$c+1;
				}
				
				echo "</table><br/><a href='http://localhost:8000/oims/homepage.jsp'>Cancel</a></center>			
				</form>			
			</body>";
	}
	else 
		echo "<center><h2>No one data  avalable? </h2> </center>";

?>