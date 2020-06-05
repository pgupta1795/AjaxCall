<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Demo For AJAX</title>
<style type="text/css">
	fieldset {
		width: 200px;
		background-color : #eeeeee;
	}
	input {
		font-family: Verdana, sans-serif;
		overflow: auto;
	}
	#ajax{
		padding: 5px 10px;
		margin: 1px auto;
		font-family: Verdana, sans-serif;
	}
	#ajax2{
		padding: 5px 10px;
		margin: 2px auto;
		font-family: Verdana, sans-serif;
	}
	#RELOAD{
		background : #FFF;
		position: relative;
		margin: 0px auto;
		font-family: inherit;
  		box-sizing: border-box;
  		padding: 1em;
	}
	.right {
	  margin: auto;
	  width: auto;
	  border: 3px solid #73AD21;
	  padding: 5px;
	  text-align: center;
	}
</style>
</head>
<body>
	<b>AJAX Demo Page</b>
	<br><br>
	<div id="txt"></div>
	<form id="RELOAD"><input type="submit" value="Reload"></form>
	<div class=left><form action="AjaxDemo" id="ajax">
		<fieldset>
			<legend>LOGIN: </legend>
			<br>
			First Name : <input type="text" name="FirstName">
			<br><br>
			Last Name :  <input type="text" name="LastName">
			<br><br>
			<input type="submit" value="Submit" />
			<br>
		</fieldset>
		<br><br>
	</form></div>
	<div class=right><form action="" id="ajax2">
		<h4 id="test">THIS is AJAX example</h4>
		<input type="button" value="AJAXcall" onClick="ajaxDemo()"><br><br>
	  	<select name="customer" onchange="displayPersonDetails(this.value)">
		    <option value="">Select a person:</option>
		    <option value="Pallav Gupta">Pallav Gupta</option>
		    <option value="Sangam Verma">Sangam Verma</option>
	  	</select>
	  	<div id="person"></div>
	</form></div>
	<script type="text/javascript">
		function displayPersonDetails(person) {
			  var xhttp = new XMLHttpRequest();
			  xhttp.onreadystatechange = function() {
			    if (this.readyState == 4 && this.status == 200) {
			      document.getElementById("person").innerHTML = this.responseText;
			    }
			  };
			  xhttp.open("GET", "http://localhost:8181/GitAjax/PersonDetails?p="+person, true);
			  xhttp.send();
		}
		function ajaxDemo() {
			const xmlhttp = new XMLHttpRequest();
			
			xmlhttp.onreadystatechange = function() {
				console.log("RESPONSE : ")
				
				if(xmlhttp.readyState == 4 && this.status==200){
					var today = new Date();
					window.
					document.getElementById("test").textContent = xmlhttp.responseText+today;
					console.log(xmlhttp.responseText);
				}
				
				if(this.status==404){
					console.log("STATUS NOT OK");
				}
			};
			xmlhttp.open("GET","Test.txt", true);
			xmlhttp.send();
			console.log("\nasynchronous call");
		}
	</script>
</body>
</html>