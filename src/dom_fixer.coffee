# Uses module pattern, exports adjust_slurs_in_dom
# Usage:
# adjust_slurs_in_dom()
root = exports ? this


adjust_slurs_in_dom= () ->
  # TODO: extract into own file?
  $('span[data-begin-slur-id]').each  (index) ->
    pos2=$(this).offset()
    attr=$(this).attr("data-begin-slur-id")
    slur=$("##{attr}")
    return if slur.length==0
    pos1=$(slur).offset()
    val=pos2.left-pos1.left
    if val <0
      _.error "adjust_slurs_in_dom, negative width"
      return
    $(slur).css {width: pos2.left- pos1.left + $(this).width()}

root.adjust_slurs_in_dom=adjust_slurs_in_dom