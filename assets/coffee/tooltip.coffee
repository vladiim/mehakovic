$( document ).ready ->
  $( ".tooltip-item" ).bind "click", ( event ) ->
    event.preventDefault()
    event.stopPropagation()
    $( @ ).tooltip( 'show' )

# $(document).ready ->
#   # http://css-tricks.com/bubble-point-tooltips-with-css3-jquery/
#   template = "<div class='tooltip <%= tipClass %>'><%= tip %><div class='arrow'></div></div>"

#   $( ".tooltip-item" ).bind "click", ( event ) ->
#     event.preventDefault()
#     tipItem = $( @ )
#     tipData = getTipData( tipItem )
#     createToolTip( tipData )

#   createToolTip = ( tipData ) ->
#     tipHtml = _.template( template, tipData )
#     $( tipHtml ).appendTo( 'body' )
#     $( ".#{ tipData.tipClass }" ).css({
#     	top: tipData.top, left: tipData.left, position: 'absolute'
#     })

#   getTipData = ( tipItem ) ->
#     tip      = tipItem.data( 'tooltip' )
#     tipClass = tip.replace(/\W/g, '').toLowerCase()
#     tipPos   = tipItem.position()
#     { tip: tip, tipClass: tipClass, top: tipPos.top, left: tipPos.left }

# tipItems = $( ".tooltip-item" )

# createToolTip = ( tipItem ) ->
#   tipPos  = $( tipItem ).position()
#   tipData = { tip: ( $( tipItem ).data( 'tooltip' ) ) }
#   tipHtml = _.template( template, tipData )
#   $( tipHtml ).appendTo( 'body' )
#   $( tipHtml ).css( { top: tipPos.top, left: tipPos.left, position: 'absolute' } )
  # $(tipHtml).css({ top: tipPos.top, left: tipPos.left })
  # $( tipHtml ).appendTo( '.post-layout' )

# _.each( tipItems, createToolTip )