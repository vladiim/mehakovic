$(document).ready ->
  $nav       = $( "#subscribe-nav" )
  $subscribe = $( ".subscribe" )
  $input     = $( "#email-newsletter-subscribe" )

  $nav.bind "click", ( event ) ->
    event.preventDefault()
    $subscribe.show()
    $input.focus()

  $input.bind "keyup", ->
    emailReg = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
    email    = $input.val()
    if emailReg.test( email ) then emailValid() else emailInvalid()

  emailValid = ->
    $input.attr( 'style', 'color: green;' )
    allowFormSubmission()

  emailInvalid = ->
    $input.attr( 'style', 'color: #880000;' )
    removeFormSubmission()

  allowFormSubmission = ->
    enterKey = 13
    $input.bind 'keydown', ( event ) ->
      if event.which is enterKey then submitForm()

  removeFormSubmission = ->
    $input.unbind "keydown"

  submitForm = ->
    console.log( 'form submitted!' )