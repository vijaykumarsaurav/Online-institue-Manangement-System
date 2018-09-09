

function deleteconfirm()
{
	var reg=document.getElementById("reg").value;
	if(document.getElementById("reg").value=="")
   	{
	alert(" Registation code must not  have empty ");  
	return false;  
	}
		
	var ch;
	ch=confirm("Do you want to continue to delete all the details of "+reg+" registation number ");     
	if(ch==true)
		return true;
	else 
		return false;
	
}

function getdob()
{
		var dob=document.getElementById("dob").value;
		var arr = dob.split("-");
		var yy=parseInt(arr[2]);	
		var cd=new Date();
		var y=cd.getFullYear();
		document.getElementById("age").value=y-yy;
}

function getcal()
{
	var plan=document.getElementById("plan").value;
	var depo_date=document.getElementById("dipo_date").value;
	var amt=parseInt(document.getElementById("amt").value);
	var dos=parseInt(document.getElementById("dos").value);
	var arr = depo_date.split("-");
	var dd=parseInt(arr[0]);
	var mm=parseInt(arr[1]);
	var yy=parseInt(arr[2]);
	var share=amt/10;	

	if(plan=="First - 12 Months")
	{
		var year=yy+1;
		var yyy=dd+"-"+mm+"-"+year;	
		document.getElementById("rdate").value=yyy;
		document.getElementById("reamt").value=amt+(amt*30)/100;
	}
	else if(plan=="Secoand - 24 Months")
	{	
		var year=yy+2;
		var yyy=dd+"-"+mm+"-"+year;	
		document.getElementById("rdate").value=yyy;
		document.getElementById("reamt").value=amt+(amt*40)/100;
	}
	else if(plan=="Third - 60 Months")
	{
		var year=yy+5;
		var yyy=dd+"-"+mm+"-"+year;	
		document.getElementById("rdate").value=yyy;
		document.getElementById("reamt").value=amt*2;
	}
	else if(plan=="select"){
		document.getElementById("rdate").value="";
		document.getElementById("reamt").value="";
		}

		document.getElementById("nos").value=share;
		document.getElementById("todist").value=dos+share-1;
}

function share_entry()
{
	
	if(document.getElementById("reg").value=="")
   	{
	alert(" Registation code must not  have empty !");  
	return false;  
	}
	else 
	{
		  var field=document.getElementById('reg').value; 
		for(var i=0;i<field.length;i++)
	  	  {
	  	  	if(field.charCodeAt(i)<=57 && field.charCodeAt(i)>=48)
	   	  	{}
	   	  	else
	   	 	{
	   	   	alert("Only Number should be entered Registation field !");
	   	   	document.getElementById('reg').select();
       	 	        break;return false;
         	  	} 
	  	  }
	}
   	
	if(document.getElementById("Vname").value=="")
   		{
		alert(" Name field must not  have empty !");  
		return false;
   		}
	else 
	{	
		  var field=document.getElementById('Vname').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	   	  	if(field.charCodeAt(i)<=90 && field.charCodeAt(i)>=65 || field.charCodeAt(i)<=122 && field.charCodeAt(i)>=97 || field.charCodeAt(i)==32)
	   	  	{}
	   	  	else
	   	  	{
	   	   	alert("Only Alphabetic Charecter should be entered in name field !");
	   	   	document.getElementById('Vname').select();
		   	break;return false;
		  	}
	  	   }
	}
   	if(document.getElementById("fname").value=="")
   		{
      		alert("Please Enter Father's name");
    	 	return false;
 		}
	else 
	{	
		  var field=document.getElementById('fname').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	   	  	if(field.charCodeAt(i)<=90 && field.charCodeAt(i)>=65 || field.charCodeAt(i)<=122 && field.charCodeAt(i)>=97 || field.charCodeAt(i)==32)
	   	  	{}
	   	  	else
	   	  	{
	   	   	alert("Only Alphabetic charecter should be entered in father's name  field !");
	   	   	document.getElementById('fname').select();
		   	break;return false;
		  	}
	  	   }
	}

   	if(document.getElementById("vill").value=="")
   		{
		alert(" Village field must not  have empty !");  
      		return false;
   		}
   	if(document.getElementById("post").value=="")
   		{
      		alert(" Post office field should not  have empty !");  
   		}
   	if(document.getElementById("via").value=="")
 		{
		alert(" Via  field should not  have empty !");  
   		}
	if(document.getElementById("ps").value=="")     
   		{
      		alert(" Police Station  field should not  have empty !");  
   		}
	if(document.getElementById("dist").value=="")
   		{
		alert(" District field must not  have empty !");  
      		return false;
   		}
	if(document.getElementById("state").value=="")
   		{
      		alert("State field must not  have empty !");  
      		return false;
   		}
	if(document.getElementById("pin").value=="")
   		{
      		alert(" Pin code field must not  have empty !");  
      		return false;
   		}
	else 
	{
		  var field=document.getElementById('pin').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	  	  	if(field.charCodeAt(i)<=57 && field.charCodeAt(i)>=48)
	   	  	{}
	   	  	else
	   	 	{
	   	   	alert("Only Number should be entered Pin code field !");
	   	   	document.getElementById('pin').select();
       	 	        break;return false;
         	  	} 
	  	  }
		var pin=document.getElementById('pin').value;
		var pinlen = pin.length;
		if (pinlen == 6)
		{}
		else {
		alert("Pin code should not be gratter than 6 digit or less than 6 digit ! ");
	   	document.getElementById('pin').select();
		return false;
		}			
	}
   	
   	if(document.getElementById("dob").value=="")
  		{
      		alert(" Date of Birth field must not  have empty !");  
		return false;      
   		}
	else 
	{
           var dob=document.getElementById("dob").value;		
	   if(dob.charCodeAt(2)==45 || dob.charCodeAt(1)==45)
           { 
		var arr = dob.split("-");
		var d=parseInt(arr[0]);
		var m=parseInt(arr[1]);
		var y=parseInt(arr[2]);
		
		if(m>=1 && m<=12)
		{}
		else{ 
		alert("Month not valid of date of birth !");
		return false;
			}
		
		if(y>=1950 && y<=2100)
		{}
		else{ 
		alert("Year not valid of date of birth !");		
		return false;
		}
		if(m==1 || m==3 || m==5 ||m==7 ||m==8 ||m==10 ||m==12)
		{
			if(d>=1 && d<=31)
      			{}
			else{ 
			alert("Date not valid of date of birth ! ");
			return false;
				}
		}
		if(m==4 || m==6 || m==9 ||m==7 ||m==11)
		{		
			if(d>=1 && d<=30)
      			{}
			else{ 
			alert("Date not valid  of date of birth !");
			return false;
				}
			
		}
	        if(m==2)
		{
			if(y%4==0)
			{
				if(d>=1 && d<=29)
      				{}
				else{
				alert("Date not valid of DOB becouse year is leap year !");
				return false;
					}			

			}
			else
			{
				if(d>=1 && d<=28)
  				{}
				else{ 
				alert("Date not valid  of date of Birth !");
				return false;
					}				

				}
		}
	    }
		else{ 
		alert("Date not valid of DOB field Please only use hyphan symbol(-) for  date, month and year seperation.Example date-month-year  !");
	      	return false;	  
		    }
	  
	}

	if(document.getElementById("age").value=="")
  		{
      		alert(" Age field must not  have empty !");  
		return false;      
   		}
	else 
	{	
		var a=document.getElementById("age").value;
		var d=parseInt(a);
		if(d>=1 && d<=100){}
		else 
		alert("Age should be 1 year to 100 years !");	
	}

	if(document.getElementById("mobile").value=="")
   		{
      		alert(" Mobile number field must not  have empty !");  
      		return false;
   		}
	else 
	{
		  var field=document.getElementById('mobile').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	  	  	if(field.charCodeAt(i)<=57 && field.charCodeAt(i)>=48)
	   	  	{}
	   	  	else
	   	 	{
	   	   	alert("Only Number should be entered Mobile no. field !");
	   	   	document.getElementById('mobile').select();
       	 	        break;return false;
         	  	} 
	  	  }
	}
	if(document.getElementById("email").value=="")
   		{
      		alert("Please Enter Email Id.");
      		return false;
   		}
	else 
	{
		var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
		var address = document.getElementById("email").value;
   		if(reg.test(address) == false)
		{
      		alert('Invalid Email Address !');
 		document.getElementById('email').select();
       	 	return false;
   		}		
	}
	if(document.getElementById("cert").value=="")
  		{
      		alert(" Certificate code field must not  have empty !");  
		return false;      
   		}
	else
	{
		var cert=document.getElementById('cert').value;
		var certlen = cert.length;
		if (certlen >= 1 && certlen <=30 )
		{}
		else {
		alert("Certificate  code should not be gratter than 30 digit or less than 1 digit ! ");
	   	document.getElementById('cert').select();
		return false;
		}			

	}
	if(document.getElementById("n_name").value=="")
 	{
      		alert("Nomnee Name field must not  have empty !");  
		return false;      
   	}
	else 
	{	
		  var field=document.getElementById('n_name').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	   	  	if(field.charCodeAt(i)<=90 && field.charCodeAt(i)>=65 || field.charCodeAt(i)<=122 && field.charCodeAt(i)>=97 || field.charCodeAt(i)==32)
	   	  	{}
	   	  	else
	   	  	{
	   	   	alert("Only Alphabetic Charecter should be entered in Nomnee name field !");
	   	   	document.getElementById('n_name').select();
		   	break;return false;
		  	}
	  	   }
	}

	if(document.getElementById("n_age").value=="")
  	{
      		alert("Nomee Age field must not  have empty !");  
		return false;      
   	}
	else 
	{	
		var a=document.getElementById("n_age").value;
		var d=parseInt(a);
		if(d>=1 && d<=100){}
		else 
		alert("Age should be 1 year to 100 years !");	
	}

	if(document.getElementById("n_relation").value=="")
	{
      		alert(" Nomnee Relation  field must not  have empty !");  
		return false;      
	}
	else 
	{	
		  var field=document.getElementById('n_relation').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	   	  	if(field.charCodeAt(i)<=90 && field.charCodeAt(i)>=65 || field.charCodeAt(i)<=122 && field.charCodeAt(i)>=97 || field.charCodeAt(i)==32)
	   	  	{}
	   	  	else
	   	  	{
	   	   	alert("Only Alphabetic Charecter should be entered in Nomnee Relation field !");
	   	   	document.getElementById('n_relation').select();
		   	break;return false;
		  	}
	  	   }
	}

	if(document.getElementById("scheme").value=="")
	{
      		alert("Scheme field must not  have empty !");  
		return false;      
	}
	else
	{
		var scheme=document.getElementById('scheme').value;
		var schemelen = scheme.length;
		if (schemelen >= 1 && schemelen <=30 )
		{}
		else {
		alert("Scheme should not be gratter than 30 digit or less than 1 digit ! ");
	   	document.getElementById('scheme').select();
		return false;
		}			

	}

	if(document.getElementById("dipo_date").value=="")
	{
      		alert(" Deposite date  field must not  have empty !");  
		return false;      
	}
	else 
	{
           var dipo_date=document.getElementById("dipo_date").value;		
	   if(dipo_date.charCodeAt(2)==45 || dipo_date.charCodeAt(1)==45)
           { 
		var arr = dipo_date.split("-");
		var d=parseInt(arr[0]);
		var m=parseInt(arr[1]);
		var y=parseInt(arr[2]);
		
		if(m>=1 && m<=12)
		{}
		else{ 
		alert("Month not valid of deposite date  !");
		return false;
			}
		
		if(y>=1950 && y<=2100)
		{}
		else{ 
		alert("Year not valid of deposite date!");		
		return false;
		}
		if(m==1 || m==3 || m==5 ||m==7 ||m==8 ||m==10 ||m==12)
		{
			if(d>=1 && d<=31)
      			{}
			else{ 
			alert("Date not valid of deposite date ! ");
			return false;
				}
		}
		if(m==4 || m==6 || m==9 ||m==7 ||m==11)
		{		
			if(d>=1 && d<=30)
      			{}
			else{ 
			alert("Date not valid  of deposite date !");
			return false;
				}
			
		}
	        if(m==2)
		{
			if(y%4==0)
			{
				if(d>=1 && d<=29)
      				{}
				else{
				alert("Date not valid of deposite date becouse year is leap year !");
				return false;
					}			

			}
			else
			{
				if(d>=1 && d<=28)
  				{}
				else{ 
				alert("Date not valid of deposite date !");
				return false;
					}				

				}
		}
	    }
		else{ 
		alert("Date not valid of deposite date Please only use hyphan symbol(-) for  date, month and year seperation.Example date-month-year  !");
	      	return false;	  
		    }
	  
	}

	if(document.getElementById("amt").value=="")
  	{
      		alert(" Buy Amount field must not  have empty !");  
		return false;      
   	}
	else 
	{
		  var field=document.getElementById('amt').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	  	  	if(field.charCodeAt(i)<=57 && field.charCodeAt(i)>=48)
	   	  	{}
	   	  	else
	   	 	{
	   	   	alert("Only Number should be entered in Buy amount  field !");
	   	   	document.getElementById('amt').select();
       	 	        break;return false;
         	  	} 
	  	  }
		var amt=document.getElementById('amt').value;
		var amtlen = amt.length;
		if (amtlen >= 1 && amtlen <=6)
		{}
		else {
		alert("Buy amount should not be gratter than 100000 digit or less than 1 digit ! ");
	   	document.getElementById('amt').select();
		return false;
		}			
	}
   	
	
	if(document.getElementById("dos").value=="")
  	{
      		alert(" Distinictive no.(s) of form field must not  have empty !");  
		return false;      
   	}	
	else 
	{
		  var field=document.getElementById('dos').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	  	  	if(field.charCodeAt(i)<=57 && field.charCodeAt(i)>=48)
	   	  	{}
	   	  	else
	   	 	{
	   	   	alert("Only Number should be entered in Distinictive no.(s) of form  field !");
	   	   	document.getElementById('dos').select();
       	 	        break;return false;
         	  	} 
	  	  }
	}	


	if(document.getElementById("plan").value=="select")
  	{
      		alert("Please must select Plan !");  
		return false;      
	}

	
	var ch;
	ch=confirm("All the information secussessfully send to store");     
	if(ch==true)
		return true;
	else 
		return false;

}