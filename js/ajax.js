
$( document ).ready(function() {
  
   
  
  
});



// JavaScript Document
var XMLHttpRequestObject=false;
function display(classid)
{
    
       $.ajax({
          type: "GET", 
          url: "displaydewycat.php?classid="+classid, 
          success: function(result){
           document.getElementById("div").innerHTML=result;
           }
      });
    
}

var XMLHttpRequestObject=false;
function getcopy(accNo)
{
        $.ajax({
          type: "GET", 
          url: "bookcopy.php?accNo="+accNo, 
          success: function(result){
           document.getElementById("get").innerHTML=result;
           }
      });    
    
}


function viewonly(studentid)
{
     $.ajax({
          type: "GET", 
          url: "viewonly.php?studentid="+studentid, 
          success: function(result){
           document.getElementById("view").innerHTML=result;
           }
      });      
    
}



function dissearch(classid)
{
         $.ajax({
          type: "GET", 
          url: "searchbookview.php?classid="+classid, 
          success: function(result){
           document.getElementById("display").innerHTML=result;
           }
      });   
    
}

/*new ajax for printing*/
var XMLHttpRequestObject=false;
function getbooks(year)
{
             $.ajax({
          type: "GET", 
          url: "getbooks.php?year="+year, 
          success: function(result){
           document.getElementById("getresult").innerHTML=result;
           }
      });   
    
}
