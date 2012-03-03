// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require best_in_place
//= require_tree .


$(document).ready(function(){


	$(".collapse").collapse({
		toggle: true
	});

	$(".alert").alert();

	$("p.link a").click(function(){
		link_id = $(this).data("id")
		url = "/links/" + link_id + "/clicked"
		$.post(url, function(){
			// this will update the score
		})
	})

	// bind click event to btn.btn and load url
	$('btn.btn').click(function(){
		url = $(this).attr('src');
		window.open(url);
	});

	$("form.well").bind("submit", function(event) {
		// alert("form submitted");
		event.preventDefault();
		$(".accordion-toggle").click();
	})



})