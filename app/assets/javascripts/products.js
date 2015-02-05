// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
	var formHeight = $(".hiddenForm").height();
	var h = 0;
	$(".hiddenForm").css({height: '0px'});

	$(".newHidden").click(function(){
		if (h == 0){
			h = formHeight
			$("span.arrow").html("&#9650;");
		}else{
			h = 0;
			$("span.arrow").html("&#9660;");
		}
		$(".hiddenForm").animate({
			height: h
		}, 600)
	});


});