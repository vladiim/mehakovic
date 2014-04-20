$(document).ready ->
	$(".card").bind "touchstart click", ->
    window.location.href = $(@).find('a').attr('href');