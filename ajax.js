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

function get_agent_code(){
    	var url="agent_code_list.php";
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
         var myArray=str.split(',');
         var j=0;
         for(var i=1;i<myArray.length+1;i++)
         {
         document.getElementById('sagent').options[i] =new  Option(myArray[i-1]);
         }
         
    }
}
  

