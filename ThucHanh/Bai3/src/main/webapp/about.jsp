<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>

<!-- Bootstrap CSS -->
<link href="lib/css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>

<body>
	<div class="row">
		<div class="container">
			<div id="header" style="height: 100px; display: none;">
				<h1 style="text-align: center; line-height: 100px;" id="intro"></h1>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-ex1-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="." id="home"></a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-ex1-collapse">
					 <ul class="nav navbar-nav">
                        <li><a href="#" id="introduction"></a></li>
                        <li><a href="productservlet" id="product"></a></li>
                    </ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="" id="search-text">
						</div>
						<button type="submit" class="btn btn-default" id="search-button"></button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<select id="site-lang" class="form-control" style="margin-top: 8px;">
							<option value="en">English</option>
							<option value="vi">Vietnamese</option>							
							<option value="ko">Korean</option>
						</select>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</nav>

		</div>
	</div>

	<div class="row">
		<div class="container" style="height: 600px;">
			<h1 style="line-height: 500px; text-align: center;" id="message"><%= request.getAttribute("message")%></h1>
		</div>
	</div>

	

	<div class="row">
		<div class="container">
			<div class="footer" style="margin-top: 50px; height: 200px; background: #eee;">
				<h1 style="text-align: center; line-height: 200px" id="about"></h1>
			</div>
		</div>
	</div>
	

	<!-- jQuery -->
	<script src="lib/js/jquery-3.2.1.min.js" type="text/javascript"></script>
	<!-- Bootstrap JavaScript -->
	<script src="lib/js/bootstrap.min.js" type="text/javascript"></script>
	<!-- scripts -->
	<script src="lib/js/scripts.js" type="text/javascript"></script>

</body>

</html>