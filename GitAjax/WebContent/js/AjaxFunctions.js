/**
 * Utility JS=avascript file for ajax functions
 */

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