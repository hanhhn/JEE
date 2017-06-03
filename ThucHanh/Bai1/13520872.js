$(document).ready(function(){
	$("[data-toggle='tooltip']").tooltip();  
	$(".content-item").find(".check-box").each(function(i, obj) {
		var string = "#" + obj.id + " input[type=checkbox]";
		$(string).on("change", function() {
			$(string).not(this).prop("checked", false);
		});
	});
	$("#NgaySinh").focus(function(){
		$("#DateTimeDetail").text("(Month, DD, YYYY)");
	});
	$("#NamSinh").focus(function(){
		$("#DateTimeDetail").text("(Month, DD, YYYY)");
	});
	$('#Email').bind('input', function() {
	    CheckEmail($("#Email").val());
	});
	$("body").on("click", "li", function() {
		$(this).toggleClass("selected");
	});
	InitControl();
});

function InitControl(){
	$("#move-one-left").click(function() {
		$("#CacMonHocDaChon .selected").each(function(){
			$("#CacMonHoc").append("<li>"+$(this).text()+"</li>");
		});
		$("#CacMonHocDaChon .selected").remove();
	});

	$("#move-all-left").click(function() {
		$("#CacMonHocDaChon li").each(function(){
			$("#CacMonHoc").append("<li>"+$(this).text()+"</li>");
			$("#CacMonHocDaChon li").remove();
		});
	});

	$("#move-one-right").click(function() {
		$("#CacMonHoc .selected").each(function(){
			$("#CacMonHocDaChon").append("<li>"+$(this).text()+"</li>");
		});
		$("#CacMonHoc .selected").remove();
	});
	$("#move-all-right").click(function() {
		$("#CacMonHoc li").each(function(){
			$("#CacMonHocDaChon").append("<li>"+$(this).text()+"</li>");
			$("#CacMonHoc li").remove();
		});
	});

	$("#ok").click(function() {
		var string = "Bạn đã đăng ký các môn:";
		$("#CacMonHocDaChon li").each(function(){
			string = string + "\n-" + $(this).text();
		});
		alert(string);
	});
	$("#DangKy").click(function() {
		if (CheckInput()){
			$("#table tbody").append("<tr> " +
									 "<td> " + $("#MaSo").val() 	+ " </td> " +
									 "<td> " + $("#HoVaTen").val() 	+ " </td> " +
									 "<td> " + $("#GioiTinh").val() + " </td> " +
									 "<td> " + $("#NgaySinh").val() + "/"		+
									 		 + $("select#ThangSinh").val() 		+ "/"
									 		 + $("#NamSinh").val() + " </td> "	+
									 " </tr>");
			ResetInput();			
		}
	});
	$("#Xoa").click(function() {
		ResetInput();			
	});
}

function ResetInput(){
	$(".content-item").find(".input, .mobile, .email").each(function(i, obj) {
		$("#" + obj.id).val("");
	});
	$(".content-item").find(".check-box").each(function(i, obj) {
		var string = "#" + obj.id + " input[type=checkbox]";
		$(string).prop("checked", false);
	});
	$("select#ThangSinh").val("1");
	$("#NamSinh").val("");
	$("#NgaySinh").val("");
	$("#DateTimeDetail").text("(Month, DD, YYYY)");
	$("#EmailDetail").text("(gmail.com/gm.uit.edu.vn)");
	$("#move-all-left").click();
}

function MaxDay(){
	var month = $("select#ThangSinh").val();
	if (month == 1 || month == 3 || month == 5 || month == 7 ||
		month == 8 || month == 10 || month == 12){
		$("#NgaySinh").prop("max", 31);
	}
	else if (month == 4 || month == 6 || month == 9 || month == 11){
		$("#NgaySinh").prop("max", 30);
	}
	else if (month == 2){
		$("#NgaySinh").prop("max", 29);
	}
}

function CheckMaxDay(){
	var day = parseInt($("#NgaySinh").val());
	var max = parseInt($("#NgaySinh").prop("max"));
	if (isNaN(day) || day == 0){
		$("#DateTimeDetail").text("Nhập ngày đi bạn!");
	}
	else{
		if (day > max){
			$("#NgaySinh").val("");
			$("#DateTimeDetail").text("Tháng này chỉ có " + max + " ngày!");
		}
		else{
			$("#DateTimeDetail").text("OK!");
			return true;
		}
	}
	return false;
}

function CheckYear(){
	var month = $("select#ThangSinh").val();
	var day = $("#NgaySinh").val();
	var year = $("#NamSinh").val();
	if (CheckMaxDay()){
		if (isNaN(year) || year == 0){
			$("#DateTimeDetail").text("Nhập năm đi bạn!");
		}
		else{
			if (month == 2 && day == 29){
				if (!((((year % 4) == 0 && (year % 100) != 0) || 
					((year % 400) == 0 && (year % 100) == 0)))){
					$("#DateTimeDetail").text("Chưa đúng năm nhuận!");
					return false;
				}
				else{
					$("#DateTimeDetail").text("OK!");
				}
			}
			else{
				$("#DateTimeDetail").text("OK!");
			}
		}
	}
	return true;
}

function CheckDateTime(day, month, year, error){
	if (day != "" && month != "" && year != ""){
		var DateTime = Date.parse(year + "/" + month + "/" + day);
		if (isNaN(DateTime) || CheckYear() == false)
		{
			alert("Ngày tháng không đúng!");
			error++;
		}
	}
	else{
		alert("Chưa nhập hoàn tất ngày tháng!");
		error++;
	}
	return error;
}

function CheckEmpty(string, title, error){
	if ($.trim(string) == ""){
		alert(title + " không được bỏ trống!");
		error++;
	}
	return error;
}

function CheckMobile(string, title, error){
	var regex = /^((\\+84|0)\d{9,10})$/;
	if (!regex.test(string)){
		alert(title + " không hợp lệ!");
		error++;
	}
	return error;
}

function CheckCheckbox(id, title, error){
	var flag = false;
	$(".content-item").find("#" + id + " input[type=checkbox]").each(function(i, obj){
		if (obj.checked){
			flag = true;
			$("#" + id).val(obj.value);
			return false;
		}
	});
	if (!flag){
		alert("Phải check vào ô " + title + "!");
		error++;
	}
	return error;
}

function CheckEmail(string){
	var regex = /^[a-zA-Z0-9.]+@(gmail\.com|gm.uit.edu.vn)$/;
	if (string == ""){
		$("#EmailDetail").text("(gmail.com/gm.uit.edu.vn)");
	}
	else{
		if (!regex.test(string)){
			$("#EmailDetail").text("Email không hợp lệ!");
			return false;
		}
		else{
			$("#EmailDetail").text("OK!");
			return true;
		}
	}
}

function CheckInput(){
	var error = 0;
	$(".content-item").find(".input").each(function(i, obj) {
		error += CheckEmpty(obj.value, obj.attributes["data-original-title"].value, error);
	});
	$(".content-item").find(".mobile").each(function(i, obj) {
		error += CheckMobile(obj.value, obj.attributes["data-original-title"].value, error);
	});
	$(".content-item").find(".check-box").each(function(i, obj) {
		error += CheckCheckbox(obj.id, obj.title, error);
	});
	error += CheckDateTime($("#NgaySinh").val(), $("select#ThangSinh").val(), $("#NamSinh").val(), error);
	$(".content-item").find(".email").each(function(i, obj) {
		if (!CheckEmail(obj.value)){
			alert(obj.attributes["data-original-title"].value + " không hợp lệ!");
			error++;
		};
	});
	if (error != 0){
		return false;
	}
	else{
		return true;
	}
}