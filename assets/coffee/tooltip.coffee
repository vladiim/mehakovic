$( document ).ready ->
  $( ".tooltip-item" ).bind "click", ( event ) ->
    event.preventDefault()
    event.stopPropagation()
    $( @ ).tooltip( 'show' )