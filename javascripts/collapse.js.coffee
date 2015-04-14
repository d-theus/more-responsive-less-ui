ready = ()->
  toggles = document.getElementsByClassName('toggle')
  Array.prototype.forEach.call(toggles, (t)->
    collapse_id = t.dataset.collapse
    collapse = document.getElementById(collapse_id)
    t.onclick = ->
        $(collapse).toggleClass('rolled-down')
        $(t).toggleClass('rotated')
  )

$(document).on 'page:load', ready
$(document).ready ready
