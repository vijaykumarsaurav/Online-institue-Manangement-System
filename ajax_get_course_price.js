// Get the HTTP Object 

var input_id; 
var httpObject;

function getHTTPObject(){
  if(window.ActiveXObject) return new ActiveXObject("Microsoft.XMLHTTP");
  else if (window.XMLHttpRequest) return new XMLHttpRequest();
  else {
          alert("Your browser does not support AJAX.");
          return null;
  }
}

function getPrice()
{	
	
	var course=document.getElementById("course").value;
		var url="getcourseprice.jsp?course="+course;
	httpObject = getHTTPObject(); 
   if(httpObject != null){
        httpObject.open("POST",url , true);
        httpObject.send(null);
	httpObject.onreadystatechange = setOutput; 
    } 
} 

 
function setOutput(){
 if(httpObject.readyState == 4){
         var  str = httpObject.responseText;
		 var fee=str.split(",");
		 document.getElementById("td1").innerHTML="<b>Amount</b>";
			if(document.getElementById("pay1").checked)
			{
		 	document.getElementById("td2").innerHTML="<input type='text' name='downamt' id='downamt' value='"+fee[0]+"' readonly='true'>";
			}
			else
			{
			document.getElementById("td2").innerHTML="<input type='text' name='amount' id='amount' value="+fee[1]+">";				  
			document.getElementById("insamt").value=parseInt(fee[1]);	
			}
	}
}
  