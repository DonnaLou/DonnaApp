# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready =-> 
	$(".ui.sticky").sticky({
		context: "#programmingContent",
		pushing: true,
		offset: 80
	})
	$(".tabular.vertical.menu .item").tab({
		onVisible: reloadSticky
	})

reloadSticky =->
	$(".ui.sticky").sticky('refresh')


$(document).ready(ready)
