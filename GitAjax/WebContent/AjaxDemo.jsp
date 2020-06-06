<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details PAGE</title>
<link rel="stylesheet" type="text/css" href="css/AjaxStyle.css">
<script type="text/javascript" src="js/AjaxFunctions.js"></script>
</head>
<body>
	<b>AJAX Demo Page</b>
	<br>
	<br>
	<div id="txt"></div>
	<form id="RELOAD">
		<input type="submit" value="Reload">
	</form>
	<div class=left>
		<form action="AjaxDemo" id="ajax">
			<fieldset>
				<legend>LOGIN: </legend>
				<br> First Name : <input type="text" name="FirstName"><br>
				<br> Last Name : <input type="text" name="LastName"><br>
				<br> <input type="submit" value="Submit" /><br>
			</fieldset>
			<br>
			<br>
		</form>
	</div>
</body>
</html>