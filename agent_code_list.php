<?php
	session_start();
	if(isSet($_SESSION['log']))
	{ 
		if(!($_SESSION['log']==1 || $_SESSION['log']==2))
			header("location:loginpage.php");
	}
	else
		header("location:loginpage.php");	

	include("connection.php");
	$conObject = new MyConnection('localhost','root','','ugpl');
  	$conObject->connectDb();
	$val='';
  $sql="SELECT a_code FROM agent_genl_info";
  $res=$conObject->query($sql);
  $i=0; 
  if($res && mysql_num_rows($res) )
     {
       While($row = mysql_fetch_array($res))
       {
         if ($i==0)
          $val = $val.$row[0];
         else
          $val=$val.",".$row[0];
        $i++;
       }
   }else $val = "Not Found";   
   echo $val;

 ?>