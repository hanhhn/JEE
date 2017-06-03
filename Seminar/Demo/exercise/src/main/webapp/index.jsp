<%@ page contentType="text/html; charset=UTF-8"%>

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
							<input type="text" class="form-control" placeholder=""
								id="search-text">
						</div>
						<button type="submit" class="btn btn-default" id="search-button"></button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<select id="site-lang" class="form-control"
							style="margin-top: 8px;">
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
		<div class="container">

			<div class="jumbotron">
				<div class="container">
					<h1 id="hello"></h1>
					<p id="content"></p>
					<p>
						<a class="btn btn-primary btn-lg" id="learnmore"></a>
					</p>
				</div>
			</div>

		</div>
	</div>

	<div class="row">
		<div class="container">
			<div
				class="col-xs-12 col-sm-8 col-md-8 col-sm-offset-2 col-md-offset-2">
				<h1 style="text-align: center">Lãi Suất Và Tỷ Giá Của Ngân Hàng</h1>
				<ul class="nav nav-tabs">
					<li class="active"><a href="#1" data-toggle="tab">Lãi Suất</a></li>
					<li><a href="#2" data-toggle="tab">Tỷ Giá</a></li>
				</ul>
				<div class="tab-content ">
					<div class="tab-pane active" id="1">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tbody>
								<tr>
									<td class="laisuat_content_td" colspan="3" width="100%"><label
										class="style_font"> TP Hà Nội</label></td>
								</tr>
								<tr>
									<td class="laisuat_content_td" width="35%" rowspan="2"
										style="vertical-align: middle;"><label class="style_font">
											Kỳ hạn</label></td>
									<td class="row1" colspan="2" width="65%"><label
										class="style_font"> Loại tiền gửi (%năm)</label></td>
								</tr>
								<tr class="style_font">
									<td class="row2">USD</td>
									<td class="row2">VND</td>
								</tr>
								<!-- ===================================== -->
								<tr class="laisuat_content1">
									<td class="row1">5 tháng</td>
									<td class="row1">&nbsp;-&nbsp;</td>
									<td class="row1">5%&nbsp;</td>
								</tr>
								<tr class="laisuat_content2">
									<td class="row1">KKH</td>
									<td class="row1">&nbsp;-&nbsp;</td>
									<td class="row1">0,2%&nbsp;</td>
								</tr>

								<tr class="laisuat_content1">
									<td class="row1">1 tháng</td>
									<td class="row1">&nbsp;-&nbsp;</td>
									<td class="row1">4,3%&nbsp;</td>
								</tr>

								<tr class="laisuat_content2">
									<td class="row1">2 tháng</td>
									<td class="row1">&nbsp;-&nbsp;</td>
									<td class="row1">4,3%&nbsp;</td>
								</tr>

								<tr class="laisuat_content1">
									<td class="row1">3 tháng</td>
									<td class="row1">&nbsp;-&nbsp;</td>
									<td class="row1">4,8%&nbsp;</td>
								</tr>

								<tr class="laisuat_content2">

									<td class="row1">6 tháng</td>
									<td class="row1">&nbsp;-&nbsp;</td>
									<td class="row1">5,3%&nbsp;</td>
								</tr>

								<tr class="laisuat_content1">
									<td class="row1">9 tháng</td>
									<td class="row1">&nbsp;-&nbsp;</td>
									<td class="row1">5,5%&nbsp;</td>
								</tr>

								<tr class="laisuat_content2">
									<td class="row1">364 ngày</td>
									<td class="row1">&nbsp;-&nbsp;</td>
									<td class="row1">6,8%&nbsp;</td>
								</tr>

								<tr class="laisuat_content1">
									<td class="row1">12 tháng</td>
									<td class="row1">&nbsp;-&nbsp;</td>
									<td class="row1">6,9%&nbsp;</td>
								</tr>

								<tr class="laisuat_content2">
									<td class="row1">13 tháng</td>
									<td class="row1">&nbsp;-&nbsp;</td>
									<td class="row1">6,8%&nbsp;</td>
								</tr>

								<tr class="laisuat_content1">
									<td class="row1">18 tháng</td>
									<td class="row1">&nbsp;-&nbsp;</td>
									<td class="row1">6,8%&nbsp;</td>
								</tr>

								<tr class="laisuat_content2">
									<td class="row1">24 tháng (*)</td>
									<td class="row1">&nbsp;-&nbsp;</td>
									<td class="row1">7%&nbsp;</td>
								</tr>

								<tr class="laisuat_content1">
									<td class="row1">36 tháng (*)</td>
									<td class="row1">&nbsp;-&nbsp;</td>
									<td class="row1">7%&nbsp;</td>
								</tr>

								<tr>
									<td style="height: 4px" class="br6" colspan="3"></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="tab-pane" id="2">
						<table id="tbl_100">
							<tbody>
								<tr style="height: 20px;">
									<th>Ngoại tệ</th>
									<th>Mua</th>
									<th>Bán</th>
								</tr>

								<tr class=" alter">
									<td class="style_font">USD</td>
									<td class="tygia_mua">22.670,00</td>
									<td class="tygia_mua">22.740,00</td>
								</tr>

								<tr>
									<td class="style_font">EUR</td>
									<td class="tygia_mua">25.143,00</td>
									<td class="tygia_mua">25.369,00</td>
								</tr>

								<tr class=" alter">
									<td class="style_font">GBP</td>
									<td class="tygia_mua">29.267,00</td>
									<td class="tygia_mua">29.522,00</td>
								</tr>

								<tr>
									<td class="style_font">HKD</td>
									<td class="tygia_mua">2.890,00</td>
									<td class="tygia_mua">2.946,00</td>
								</tr>

								<tr class=" alter">
									<td class="style_font">CHF</td>
									<td class="tygia_mua">23.073,00</td>
									<td class="tygia_mua">23.267,00</td>
								</tr>

								<tr>
									<td class="style_font">JPY</td>
									<td class="tygia_mua">203,17</td>
									<td class="tygia_mua">204,94</td>
								</tr>

								<tr class=" alter">
									<td class="style_font">AUD</td>
									<td class="tygia_mua">16.808,00</td>
									<td class="tygia_mua">16.949,00</td>
								</tr>

								<tr>
									<td class="style_font">CAD</td>
									<td class="tygia_mua">16.625,00</td>
									<td class="tygia_mua">16.782,00</td>
								</tr>

								<tr class=" alter">
									<td class="style_font">SGD</td>
									<td class="tygia_mua">16.228,00</td>
									<td class="tygia_mua">16.388,00</td>
								</tr>

								<tr>
									<td class="style_font">SEK</td>
									<td class="tygia_mua">2.553,00</td>
									<td class="tygia_mua">2.614,00</td>
								</tr>

								<tr class=" alter">
									<td class="style_font">LAK</td>
									<td class="tygia_mua">02,45</td>
									<td class="tygia_mua">02,80</td>
								</tr>

								<tr>
									<td class="style_font">DKK</td>
									<td class="tygia_mua">3.355,00</td>
									<td class="tygia_mua">3.434,00</td>
								</tr>

								<tr class=" alter">
									<td class="style_font">NOK</td>
									<td class="tygia_mua">2.654,00</td>
									<td class="tygia_mua">2.718,00</td>
								</tr>

								<tr>
									<td class="style_font">CNY</td>
									<td class="tygia_mua">3.256,00</td>
									<td class="tygia_mua">3.332,00</td>
								</tr>

								<tr class=" alter">
									<td class="style_font">THB</td>
									<td class="tygia_mua">631,46</td>
									<td class="tygia_mua">683,04</td>
								</tr>

								<tr>
									<td class="style_font">RUB</td>
									<td class="tygia_mua">360,00</td>
									<td class="tygia_mua">441,00</td>
								</tr>

								<tr class=" alter">
									<td class="style_font">NZD</td>
									<td class="tygia_mua">15.534,00</td>
									<td class="tygia_mua">15.765,00</td>
								</tr>

								<tr>
									<td class="style_font">VNĐ</td>
									<td class="tygia_mua">-</td>
									<td class="tygia_mua">-</td>
								</tr>

								<tr class=" alter">
									<td class="style_font">USD (5-20)</td>
									<td class="tygia_mua">-</td>
									<td class="tygia_mua">-</td>
								</tr>

								<tr>
									<td class="style_font">USD (1-2)</td>
									<td class="tygia_mua">-</td>
									<td class="tygia_mua">-</td>
								</tr>

								<tr class=" alter">
									<td class="style_font">KRW</td>
									<td class="tygia_mua">-</td>
									<td class="tygia_mua">21,94</td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>

			</div>

		</div>
	</div>

	<div class="row">
		<div class="container">
			<div class="footer"
				style="margin-top: 50px; height: 200px; background: #eee;">
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