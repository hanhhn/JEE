function CreateObjectXMLHttp() {
	var xmlHttp = null;
	if (window.XMLHttpRequest) {
		xmlHttp = new XMLHttpRequest();
	} else {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	return xmlHttp;
}

function helloGet() {
	var xmlHttp = CreateObjectXMLHttp();
	var name = document.getElementById("userName").value;
	xmlHttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			document.getElementById("show").innerText = this.responseText;
		}
	};

	xmlHttp.open("GET", "GetServlet?userName=" + name, true);
	xmlHttp.setRequestHeader("Content-type",
			"application/x-www-form-urlencoded");
	xmlHttp.send();

}

function helloPost() {
	var xmlHttp = CreateObjectXMLHttp();
	var name = document.getElementById("userName").value;
	xmlHttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			document.getElementById("show").innerText = this.responseText;
		}
	};

	xmlHttp.open("POST", "PostServlet", true);
	xmlHttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	xmlHttp.send("userName=" + name);
}

jQuery(document).ready(function() {
	$("#getjson").click(function() {
		$.ajax({
			url : 'JsonServlet',
			data: {},
			type : 'GET',
			error : function (request, error) {
		        console.log(arguments);
		        alert(" Can't do because: " + error);
		    },
			dataType : 'json',
			success : function(data) {
				$("#json-result").val(JSON.stringify(data));
				console.log(JSON.stringify(data));
			},
		});
	});
	
	$("#postjson").click(function() {
		$.ajax({
			url : 'JsonServlet',
			data: {
				textsearch: $("#json-search").val()
			},
			type : 'POST',
			error : function (request, error) {
		        console.log(arguments);
		        alert(" Can't do because: " + error);
		    },
			dataType : 'json',
			success : function(data) {
				$("#json-result").val(JSON.stringify(data));
				console.log(data);
			},
		});
	});

});