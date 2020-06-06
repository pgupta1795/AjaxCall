<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Demo For AJAX</title>
</head>
<script type="text/javascript" src="js/AjaxFunctions.js"></script>
<body>
	<h3>For 
	<%= session.getAttribute("firstName") %> 
	<%= session.getAttribute("lastName") %> 
	examples are shown</h3>
	<div class=right>
	<form action="" id="ajax2">
		<label id="test">AJAX call example 1: </label><br><br>
		<input type="button" value="AJAXcall" onClick="ajaxDemo()"><br><br>
		<label id="test">AJAX call example 2: </label><br><br>
	  	<select name="customer" onchange="displayPersonDetails(this.value)">
		    <option value="">Select a person:</option>
		    <option value="Pallav Gupta">Pallav Gupta</option>
		    <option value="Sangam Verma">Sangam Verma</option>
	  	</select>
	  	<div id="person"></div>
	</form>
	</div>
</body>
</html>