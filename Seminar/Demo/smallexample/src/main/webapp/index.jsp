<!DOCTYPE>
<html>
<head>
	<title>Ajax Sample</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="content">
		<div class="row">
			<div class="container" style="text-align: center;">
				<h1 style="text-align: center;">Demo Ajax - Javascript</h1>
				<div style="margin: 100px">
					<h1 id="show"></h1>
					<label>Name: <input id="userName" name="userName" type="text" placeholder="user name"/></label>
					<button type="button" onclick="helloGet();">Submit Get</button>
					<button type="button" onclick="helloPost();">Submit Post</button>
				</div>
			</div>
			
			<div class="container" style="text-align: center;">
				<h1 style="text-align: center;">Demo Ajax - JQuery</h1>
				<div style="margin: 20px;">
					<lable>Text: <input id="json-search"/></lable>
				</div>
				<div style="margin: 20px;">
					<label>Result: <textarea rows="5" cols="100" id="json-result"></textarea></label>
				</div>
				<div style="margin: 20px;">
					<button id="getjson" style="padding: 5px 10px; margin-bottom: 15px">Get Json</button>
					<br>
					<button id="postjson" style="padding: 5px 10px;">Post Json</button>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript" src="jquery.min.js"></script>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>