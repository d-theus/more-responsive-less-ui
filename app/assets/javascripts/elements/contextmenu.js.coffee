ready = () ->
  menus = document.getElementsByClassName('context-menu')
  Array.prototype.forEach.call(menus, (menu)->
    context_id = menu.dataset.context
    context    = document.getElementById(context_id)
    $(context).on 'click', (e)->
      $(menu).css {
        top:  e.pageY,
        left: e.pageX
      }
      $(menu).addClass('opened')
      e.stopPropagation()

    $(window).on 'click', ->
      $(menu).removeClass('opened')
  )

$(document).on 'page:load', ready
$(document).ready ready
