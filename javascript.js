function conformation()
{
if(document.getElementById("user").value=="")
{
alert("Please enter current  username !");
return false;
}
if(document.getElementById("pass").value=="")
{
alert("Please enter current  password !");
return false;
}

if(document.getElementById("nuser").value=="")
{
alert("Please enter new  username !");
return false;
}
if(document.getElementById("npass").value=="")
{
alert("Please enter new password !");
return false;
}
}


function collectionval()
{
		if(document.getElementById("from_date").value=="")
  		{
      		alert("From Date field must not  have empty !");  
		return false;      
   		}
		else 
		{
			var dob=document.getElementById("from_date").value;		
			if(dob.charCodeAt(2)==45 || dob.charCodeAt(1)==45)
           { 
		var arr = dob.split("-");
		var d=parseInt(arr[0]);
		var m=parseInt(arr[1]);
		var y=parseInt(arr[2]);
		var dbb=y+"-"+m+"-"+d;
		document.getElementById("fdate").value=dbb;
		if(m>=1 && m<=12)
		{}
		else{ 
		alert("Month not valid of from  date  !");
		return false;
			}
		
		if(y>=1950 && y<=2100)
		{}
		else{ 
		alert("Year not valid of from date  !");		
		return false;
		}
		if(m==1 || m==3 || m==5 ||m==7 ||m==8 ||m==10 ||m==12)
		{
			if(d>=1 && d<=31)
      			{}
			else{ 
			alert("Date not valid of from date  ! ");
			return false;
				}
		}
		if(m==4 || m==6 || m==9 ||m==7 ||m==11)
		{		
			if(d>=1 && d<=30)
      			{}
			else{ 
			alert("Date not valid  of from date  !");
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
				alert("Date not valid of from date   becouse year is leap year !");
				return false;
					}			

			}
			else
			{
				if(d>=1 && d<=28)
  				{}
				else{ 
				alert("Date not valid  of from date   !");
				return false;
					}				

				}
		}
	    }
		else{ 
		alert("Date not valid of from date   field Please only use (DD-MM-YYYY) formate !");
	      	return false;	  
		    } 
	}
		if(document.getElementById("to_date").value=="")
  		{
      		alert("To Date field must not  have empty !");  
		return false;      
   		}
		else 
		{
			var dob=document.getElementById("to_date").value;		
			if(dob.charCodeAt(2)==45 || dob.charCodeAt(1)==45)
           { 
		var arr = dob.split("-");
		var d=parseInt(arr[0]);
		var m=parseInt(arr[1]);
		var y=parseInt(arr[2]);
		var dbb=y+"-"+m+"-"+d;
		document.getElementById("tdate").value=dbb;
		if(m>=1 && m<=12)
		{}
		else{ 
		alert("Month not valid of To Date  !");
		return false;
			}
		
		if(y>=1950 && y<=2100)
		{}
		else{ 
		alert("Year not valid of To Date   !");		
		return false;
		}
		if(m==1 || m==3 || m==5 ||m==7 ||m==8 ||m==10 ||m==12)
		{
			if(d>=1 && d<=31)
      			{}
			else{ 
			alert("Date not valid of To Date    ! ");
			return false;
				}
		}
		if(m==4 || m==6 || m==9 ||m==7 ||m==11)
		{		
			if(d>=1 && d<=30)
      			{}
			else{ 
			alert("Date not valid  of To Date    !");
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
				alert("Date not valid of To Date     becouse year is leap year !");
				return false;
					}			

			}
			else
			{
				if(d>=1 && d<=28)
  				{}
				else{ 
				alert("Date not valid  of To Date     !");
				return false;
					}				

				}
		}
	    }
		else{ 
		alert("Date not valid of To Date     field Please only use (DD-MM-YYYY) formate !");
	      	return false;	  
		    }
	  
	}

}

function checkamt()
{
	
if(document.getElementById("pay2").checked)
{
	if(document.getElementById("amount").value=="")
   		{
      		alert("Amount field must not  have empty !");  
      		return false;
   		}
	else 
	{
		  var field=document.getElementById('amount').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	  	  	if(field.charCodeAt(i)<=57 && field.charCodeAt(i)>=48)
	   	  	{}
	   	  	else
	   	 	{
	   	   	alert("Only Number should be entered in Amount field !");
	   	   	document.getElementById('amount').select();
       	 	     return false; break;
         	  	} 
	  	  }
	}

}
		  var ia=document.getElementById('insamt').value;
		  var am=document.getElementById('amount').value;
		  var ins=parseInt(ia);
		  var amount=parseInt(am);

		  if(amount <= ins)
			{}
		  else 
			  alert("Amount should less than "+ins);

}

function exp_validation()
{
	if(document.getElementById("amount").value=="")
   	{
	alert(" Amount  must not  have empty !");  
	return false;  
	}
	else 
	{
		  var field=document.getElementById('amount').value; 
		for(var i=0;i<field.length;i++)
	  	  {
	  	  	if(field.charCodeAt(i)<=57 && field.charCodeAt(i))
	   	  	{}
	   	  	else
	   	 	{
	   	   	alert("Only Number  should be entered in Amount field !");
	   	   	document.getElementById('amount').select();
       	 	        return false;break;
         	  	} 
	  	  }
	}
	if(document.getElementById("desc").value=="")
   	{
	alert(" Description  must not  have empty !");  
	return false;  
	}
	
}
function getCal()
{
	  var amt=document.getElementById('amount').value; 
   	  var c=document.getElementById('remain').value;
	
	  var amount=parseInt(amt);
	  var cred=parseInt(c);

	  if(amount <= cred && amount >=0)
	  {
	    document.getElementById('nc').value=cred-amount;
	  }
	  else{
		alert("Amount should be less than remain amount and greater than zero !");
	  document.getElementById('nc').value="";
	  }
}
function check()
{
	if(document.getElementById("form_no").value=="Select")
   	{
	alert(" Please select From number !");  
	return false;  
	}
}

function empcheck()
{
	if(document.getElementById("emp_id").value=="Select")
   	{
	alert("Please Select  Employee id   !");  
	return false;  
	}

}
function teacheck()
{
	if(document.getElementById("tea_id").value=="Select")
   	{
	alert("Please Select Teacher id   !");  
	return false;  
	}
}
function batch_search()
{
	if(document.getElementById("batch_name").value=="Select Batch")
   	{
	alert(" Please select Batch !");  
	return false;  
	}
}

function course_search()
{
	if(document.getElementById("course_code").value=="Select Course")
   	{
	alert(" Please select course !");  
	return false;  
	}


}
function empmakecheck()
{
	if(document.getElementById("amount").value=="")
   	{
	alert(" Amount  must not  have empty !");  
	return false;  
	}

}
function collValidation()
{
	if(document.getElementById("amount").value=="")
   	{
	alert(" Amount field  must not  have empty !");  
	return false;  
	}
	else 
	{
		  var field=document.getElementById('amount').value; 
		for(var i=0;i<field.length;i++)
	  	  {
	  	  	if(field.charCodeAt(i)<=57 && field.charCodeAt(i))
	   	  	{}
	   	  	else
	   	 	{
	   	   	alert("Only Number  should be entered in Amount field !");
	   	   	document.getElementById('amount').select();
       	 	        return false;break;
         	  	} 
	  	  }
	}
	if(document.getElementById("nc").value=="")
   	{
	alert("Now Remain field should not  have empty !");  
	return false;  
	}

}
function validation()
{
	if(document.getElementById("form_no").value=="")
   	{
	alert(" Form number  must not  have empty !");  
	return false;  
	}
	else 
	{
		  var field=document.getElementById('form_no').value; 
		for(var i=0;i<field.length;i++)
	  	  {
	  	  	if(field.charCodeAt(i)<=57 && field.charCodeAt(i) || field.charCodeAt(i) == 47)
	   	  	{}
	   	  	else
	   	 	{
	   	   	alert("Only Number and backslash should be entered in Form no. field !");
	   	   	document.getElementById('form_no').select();
       	 	        return false;break;
         	  	} 
	  	  }
	}

	if(document.getElementById("course").value=="Select Course")
   		{
		alert(" Course field must be select  !");  
		return false;
   		}
	if(document.getElementById("batch_name").value=="Select Batch")
   		{
		alert(" Batch field must be select  !");  
		return false;
		}


if(document.getElementById("pay1").checked || document.getElementById("pay2").checked)
{}
else 
{
	alert("Please select payment mode !");
	return false;
}

/*
if(document.getElementById("pay2").checked)
{
	if(document.getElementById("amount").value=="")
   		{
      		alert("Amount field must not  have empty !");  
      		return false;
   		}
	else 
	{
		  var field=document.getElementById('amount').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	  	  	if(field.charCodeAt(i)<=57 && field.charCodeAt(i)>=48)
	   	  	{}
	   	  	else
	   	 	{
	   	   	alert("Only Number should be entered in Amount field !");
	   	   	document.getElementById('amount').select();
       	 	     return false; break;
         	  	} 
	  	  }
	}
		  var ia=document.getElementById('insamt').value;
		  var am=document.getElementById('amount').value;
		  var ins=parseInt(ia);
		  var amount=parseInt(am);

		  if(amount <= ins)
			{}
		  else 
			  alert("Amount should less than "+ins);

}*/
	if(document.getElementById("registation").value=="")
   		{
      		alert("Registation field must not  have empty !");  
      		return false;
   		}
	else 
	{
		  var field=document.getElementById('registation').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	  	  	if(field.charCodeAt(i)<=57 && field.charCodeAt(i)>=48)
	   	  	{}
	   	  	else
	   	 	{
	   	   	alert("Only Number should be entered in Registation field !");
	   	   	document.getElementById('registation').select();
       	 	     return false; break;
         	  	} 
	  	  }
	}
	if(document.getElementById("name").value=="")
   		{
		alert(" Name field must not  have empty !");  
		return false;
   		}
	else 
	{	
		  var field=document.getElementById('name').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	   	  	if(field.charCodeAt(i)<=90 && field.charCodeAt(i)>=65 || field.charCodeAt(i)<=122 && field.charCodeAt(i)>=97 || field.charCodeAt(i)==32)
	   	  	{}
	   	  	else
	   	  	{
	   	   	alert("Only Alphabetic Charecter should be entered in name field !");
	   	   	document.getElementById('name').select();
		   	return false;break;
		  	}
	  	   }
	}
   	if(document.getElementById("father_name").value=="")
   		{
      		alert("Please Enter Father's name");
    	 	return false;
 		}
	else 
	{	
		  var field=document.getElementById('father_name').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	   	  	if(field.charCodeAt(i)<=90 && field.charCodeAt(i)>=65 || field.charCodeAt(i)<=122 && field.charCodeAt(i)>=97 || field.charCodeAt(i)==32)
	   	  	{}
	   	  	else
	   	  	{
	   	   	alert("Only Alphabetic charecter should be entered in father's name  field !");
	   	   	document.getElementById('father_name').select();
		   	return false;break;
		  	}
	  	   }
	}

   	if(document.getElementById("address").value=="")
   		{
		alert(" Address field must not  have empty !");  
      		return false;
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
		var dbb=y+"-"+m+"-"+d;
		document.getElementById("ddob").value=dbb;
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
	if(document.getElementById("education").value=="")
   		{
      		alert("Education Qualification should not be empty !");
      		return false;
   		}
	if(document.getElementById("occu").value=="")
   		{
      		alert("Occupation should not be empty !");
      		return false;
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
	  	  	if(field.charCodeAt(i)<=57 && field.charCodeAt(i)>=48 || field.charCodeAt(i) == 43 || field.charCodeAt(i) == 45)
	   	  	{}
	   	  	else
	   	 	{
	   	   	alert("Only Number should be entered Mobile no. field !");
	   	   	document.getElementById('mobile').select();
       	 	     return false; break;
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
	var ch;
	ch=confirm("All the information secussessfully send to store");     
	if(ch==true)
		return true;
	else 
		return false;


}


function stu_modify()
{

	if(document.getElementById("name").value=="")
   		{
		alert(" Name field must not  have empty !");  
		return false;
   		}
	else 
	{	
		  var field=document.getElementById('name').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	   	  	if(field.charCodeAt(i)<=90 && field.charCodeAt(i)>=65 || field.charCodeAt(i)<=122 && field.charCodeAt(i)>=97 || field.charCodeAt(i)==32)
	   	  	{}
	   	  	else
	   	  	{
	   	   	alert("Only Alphabetic Charecter should be entered in name field !");
	   	   	document.getElementById('name').select();
		   	return false;break;
		  	}
	  	   }
	}
   	if(document.getElementById("father_name").value=="")
   		{
      		alert("Please Enter Father's name");
    	 	return false;
 		}
	else 
	{	
		  var field=document.getElementById('father_name').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	   	  	if(field.charCodeAt(i)<=90 && field.charCodeAt(i)>=65 || field.charCodeAt(i)<=122 && field.charCodeAt(i)>=97 || field.charCodeAt(i)==32)
	   	  	{}
	   	  	else
	   	  	{
	   	   	alert("Only Alphabetic charecter should be entered in father's name  field !");
	   	   	document.getElementById('father_name').select();
		   	return false;break;
		  	}
	  	   }
	}

   	if(document.getElementById("address").value=="")
   		{
		alert(" Address field must not  have empty !");  
      		return false;
   		}

		if(document.getElementById("dob").value=="")
  		{
      		alert(" Date of Birth field must not  have empty !");  
		return false;      
   		}
	else 
	{
           var dob=document.getElementById("dob").value;		
	   if(dob.charCodeAt(4)==45 || dob.charCodeAt(7)==45)
           { 
		var arr = dob.split("-");
		var d=parseInt(arr[2]);
		var m=parseInt(arr[1]);
		var y=parseInt(arr[0]);
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
	if(document.getElementById("education").value=="")
   		{
      		alert("Education Qualification should not be empty !");
      		return false;
   		}
	if(document.getElementById("occu").value=="")
   		{
      		alert("Occupation should not be empty !");
      		return false;
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
	  	  	if(field.charCodeAt(i)<=57 && field.charCodeAt(i)>=48 || field.charCodeAt(i) == 43 || field.charCodeAt(i) == 45)
	   	  	{}
	   	  	else
	   	 	{
	   	   	alert("Only Number should be entered Mobile no. field !");
	   	   	document.getElementById('mobile').select();
       	 	     return false; break;
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
	var ch;
	ch=confirm("All the information secussessfully send to store");     
	if(ch==true)
		return true;
	else 
		return false;
}


function teaval()
{
	if(document.getElementById("tid").value=="")
   		{
		alert(" Teacher id  must not  have empty !");  
		return false;
   		}
	if(document.getElementById("tc").value=="select course")
   		{
		alert(" Please select teaching  course  !");  
		return false;
   		}
	if(document.getElementById("tsal").value=="")
   		{
		alert("Salary must not  have empty !");  
		return false;
   		}
	else 
	{
		  var field=document.getElementById('tsal').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	  	  	if(field.charCodeAt(i)<=57 && field.charCodeAt(i)>=48 || field.charCodeAt(i) == 43 || field.charCodeAt(i) == 45)
	   	  	{}
	   	  	else
	   	 	{
	   	   	alert("Only Number should be entered Salary field !");
	   	   	document.getElementById('tsal').select();
       	 	     return false; break;
         	  	} 
	  	  }
	}
	

	if(document.getElementById("tn").value=="")
   		{
		alert(" Name field must not  have empty !");  
		return false;
   		}
	else 
	{	
		  var field=document.getElementById('tn').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	   	  	if(field.charCodeAt(i)<=90 && field.charCodeAt(i)>=65 || field.charCodeAt(i)<=122 && field.charCodeAt(i)>=97 || field.charCodeAt(i)==32)
	   	  	{}
	   	  	else
	   	  	{
	   	   	alert("Only Alphabetic Charecter should be entered in name field !");
	   	   	document.getElementById('tn').select();
		   	return false;break;
		  	}
	  	   }
	}
   	if(document.getElementById("tf").value=="")
   		{
      		alert("Please Enter Father's name");
    	 	return false;
 		}
	else 
	{	
		  var field=document.getElementById('tf').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	   	  	if(field.charCodeAt(i)<=90 && field.charCodeAt(i)>=65 || field.charCodeAt(i)<=122 && field.charCodeAt(i)>=97 || field.charCodeAt(i)==32)
	   	  	{}
	   	  	else
	   	  	{
	   	   	alert("Only Alphabetic charecter should be entered in father's name  field !");
	   	   	document.getElementById('tf').select();
		   	return false;break;
		  	}
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
		var dbb=y+"-"+m+"-"+d;
		document.getElementById("tdob").value=dbb;
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
	if(document.getElementById("tedu").value=="")
   		{
      		alert("Education Qualification should not be empty !");
      		return false;
   		}
	if(document.getElementById("tocc").value=="")
   		{
      		alert("Occupation should not be empty !");
      		return false;
   		}
	if(document.getElementById("tph").value=="")
   		{
      		alert(" Mobile number field must not  have empty !");  
      		return false;
   		}
	else 
	{
		  var field=document.getElementById('tph').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	  	  	if(field.charCodeAt(i)<=57 && field.charCodeAt(i)>=48 || field.charCodeAt(i) == 43 || field.charCodeAt(i) == 45)
	   	  	{}
	   	  	else
	   	 	{
	   	   	alert("Only Number should be entered Mobile no. field !");
	   	   	document.getElementById('tph').select();
       	 	     return false; break;
         	  	} 
	  	  }
	}
	if(document.getElementById("temail").value=="")
   		{
      		alert("Please Enter Email Id.");
      		return false;
   		}
	else 
	{
		var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
		var address = document.getElementById("temail").value;
   		if(reg.test(address) == false)
		{
      		alert('Invalid Email Address !');
 		document.getElementById('temail').select();
       	 	return false;
   		}		
	}
	var ch;
	ch=confirm("All the information secussessfully send to store");     
	if(ch==true)
		return true;
	else 
		return false;
}


function empval()
{
	if(document.getElementById("ei").value=="")
   		{
		alert(" Employee id  must not  have empty !");  
		return false;
   		}
	if(document.getElementById("po").value=="Select Post")
   		{
		alert(" Please select Post   !");  
		return false;
   		}
	if(document.getElementById("sal").value=="")
   		{
		alert("Salary must not  have empty !");  
		return false;
   		}
	else 
	{
		  var field=document.getElementById('sal').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	  	  	if(field.charCodeAt(i)<=57 && field.charCodeAt(i)>=48 || field.charCodeAt(i) == 43 || field.charCodeAt(i) == 45)
	   	  	{}
	   	  	else
	   	 	{
	   	   	alert("Only Number should be entered Salary field !");
	   	   	document.getElementById('sal').select();
       	 	     return false; break;
         	  	} 
	  	  }
	}
	

	if(document.getElementById("en").value=="")
   		{
		alert(" Name field must not  have empty !");  
		return false;
   		}
	else 
	{	
		  var field=document.getElementById('en').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	   	  	if(field.charCodeAt(i)<=90 && field.charCodeAt(i)>=65 || field.charCodeAt(i)<=122 && field.charCodeAt(i)>=97 || field.charCodeAt(i)==32)
	   	  	{}
	   	  	else
	   	  	{
	   	   	alert("Only Alphabetic Charecter should be entered in name field !");
	   	   	document.getElementById('en').select();
		   	return false;break;
		  	}
	  	   }
	}
   	if(document.getElementById("ef").value=="")
   		{
      		alert("Please Enter Father's name");
    	 	return false;
 		}
	else 
	{	
		  var field=document.getElementById('ef').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	   	  	if(field.charCodeAt(i)<=90 && field.charCodeAt(i)>=65 || field.charCodeAt(i)<=122 && field.charCodeAt(i)>=97 || field.charCodeAt(i)==32)
	   	  	{}
	   	  	else
	   	  	{
	   	   	alert("Only Alphabetic charecter should be entered in father's name  field !");
	   	   	document.getElementById('ef').select();
		   	return false;break;
		  	}
	  	   }
	}

	if(document.getElementById("edob").value=="")
  		{
      		alert(" Date of Birth field must not  have empty !");  
		return false;      
   		}
	else 
	{
           var dob=document.getElementById("edob").value;		
	   if(dob.charCodeAt(2)==45 || dob.charCodeAt(1)==45)
           { 
		var arr = dob.split("-");
		var d=parseInt(arr[0]);
		var m=parseInt(arr[1]);
		var y=parseInt(arr[2]);
		var dbb=y+"-"+m+"-"+d;
		document.getElementById("dob").value=dbb;
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
	if(document.getElementById("eedu").value=="")
   		{
      		alert("Education Qualification should not be empty !");
      		return false;
   		}
	if(document.getElementById("eocc").value=="")
   		{
      		alert("Occupation should not be empty !");
      		return false;
   		}
	if(document.getElementById("eph").value=="")
   		{
      		alert(" Mobile number field must not  have empty !");  
      		return false;
   		}
	else 
	{
		  var field=document.getElementById('eph').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	  	  	if(field.charCodeAt(i)<=57 && field.charCodeAt(i)>=48 || field.charCodeAt(i) == 43 || field.charCodeAt(i) == 45)
	   	  	{}
	   	  	else
	   	 	{
	   	   	alert("Only Number should be entered Mobile no. field !");
	   	   	document.getElementById('eph').select();
       	 	     return false; break;
         	  	} 
	  	  }
	}
	if(document.getElementById("eemail").value=="")
   		{
      		alert("Please Enter Email Id.");
      		return false;
   		}
	else 
	{
		var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
		var address = document.getElementById("eemail").value;
   		if(reg.test(address) == false)
		{
      		alert('Invalid Email Address !');
 		document.getElementById('eemail').select();
       	 	return false;
   		}		
	}
	var ch;
	ch=confirm("All the information secussessfully send to store");     
	if(ch==true)
		return true;
	else 
		return false;
}

function courseval()
{

	if(document.getElementById("cc").value=="")
   		{
		alert(" Course code  must not  have empty !");  
		return false;
   		}

	 if(document.getElementById("cn").value=="")
   		{
      		alert("Please Enter course name !");
    	 	return false;
 		}
	else 
	{	
		  var field=document.getElementById('cn').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	   	  	if(field.charCodeAt(i)<=90 && field.charCodeAt(i)>=65 || field.charCodeAt(i)<=122 && field.charCodeAt(i)>=97 || field.charCodeAt(i)==32)
	   	  	{}
	   	  	else
	   	  	{
	   	   	alert("Only Alphabetic charecter should be entered in course name  field !");
	   	   	document.getElementById('cn').select();
		   	return false;break;
		  	}
	  	   }
	}
	 if(document.getElementById("du").value=="")
   		{
      		alert("Please Enter duration !");
    	 	return false;
 		}
	if(document.getElementById("dp").value=="")
   		{
		alert("Down Payment must not  have empty !");  
		return false;
   		}
	else 
	{
		  var field=document.getElementById('dp').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	  	  	if(field.charCodeAt(i)<=57 && field.charCodeAt(i)>=48 || field.charCodeAt(i) == 43 || field.charCodeAt(i) == 45)
	   	  	{}
	   	  	else
	   	 	{
	   	   	alert("Only Number should be entered Down payment filed !");
	   	   	document.getElementById('dp').select();
       	 	     return false; break;
         	  	} 
	  	  }
	}
	if(document.getElementById("ip").value=="")
   		{
		alert("Installment  must not  have empty !");  
		return false;
   		}
	else 
	{
		  var field=document.getElementById('ip').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	  	  	if(field.charCodeAt(i)<=57 && field.charCodeAt(i)>=48 || field.charCodeAt(i) == 43 || field.charCodeAt(i) == 45)
	   	  	{}
	   	  	else
	   	 	{
	   	   	alert("Only Number should be entered installment field !");
	   	   	document.getElementById('ip').select();
       	 	     return false; break;
         	  	} 
	  	  }
	}
	var ch;
	ch=confirm("All the information secussessfully send to store");     
	if(ch==true)
		return true;
	else 
		return false;

}

function batchval()
{
	 if(document.getElementById("batch_name").value=="")
   		{
      		alert("Please Enter batch name !");
    	 	return false;
 		}
	else 
	{	
		  var field=document.getElementById('batch_name').value;
		  for(var i=0;i<field.length;i++)
	  	  {
	   	  	if(field.charCodeAt(i)<=90 && field.charCodeAt(i)>=65 || field.charCodeAt(i)<=122 && field.charCodeAt(i)>=97 || field.charCodeAt(i)==32)
	   	  	{}
	   	  	else
	   	  	{
	   	   	alert("Only Alphabetic charecter should be entered in batch name  field !");
	   	   	document.getElementById('batch_name').select();
		   	return false;break;
		  	}
	  	  }
	}
	 if(document.getElementById("course").value=="Select Course")
   		{
      		alert("Please select Course !");
    	 	return false;
 		}
	if(document.getElementById("tea_id").value=="Select Teacher")
   		{
      		alert("Please select teacher id !");
    	 	return false;
 		}
	if(document.getElementById("batch_time").value=="")
   		{
      		alert("Please Enter batch time !");
    	 	return false;
 		}
	var ch;
	ch=confirm("All the information secussessfully send to store");     
	if(ch==true)
		return true;
	else 
		return false;

}