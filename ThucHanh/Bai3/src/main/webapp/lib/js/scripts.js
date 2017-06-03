// A $( document ).ready() block.
$( document ).ready(function() {
	
	change_lang("i18nservlet");
	
	$("#site-lang").change(function() {
		change_lang('i18nservlet?lang=' + $(this).val());
	});
	
	$("#introduction").click(function () {
		$("#header").slideToggle( "slow" );
	});
});


function change_lang(action) {
	$.ajax({
		type: 'GET',
		dataType: 'json',
		contentType: 'application/json; charset=utf-8',
		url: action,
		data: { },
		error: function (request, error) {
			alert(error);
		},
		
		success: function(data) {
			console.log(data);
			$("#site-lang option[value="+ data.lang +"]").prop("selected", true);
			$("title").text(data.title);
			$("#home").text(data.home);
			$("#introduction").text(data.introduction);
			$("#product").text(data.product);
			$("#search-text").attr("placeholder", data.search);
			$("#search-button").text(data.search);
			$("#hello").text(data.hello);
			$("#content").text(data.content);
			$("#learnmore").text(data.learnmore);
			$("#about").text(data.about);
			$("#intro").text(data.intro);
			$("#message").text(data.message);
			$(".jumbotron").css({
									"background-image" : "url(" + data.banner + ")",
									"background-repeat" : "no-repeat",
									"background-position" : "center"										
								});
		},
	});
}

