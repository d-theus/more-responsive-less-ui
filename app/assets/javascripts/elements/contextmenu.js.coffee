ready = () ->
  menus = document.getElementsByClassName('context-menu')
  Array::.forEach.call menus, (menu)->
    context_id = menu.dataset.context
    context    = document.getElementById(context_id)
    context.onclick = (e)->
      menu.style.top = "#{e.pageY}px"
      menu.style.left = "#{e.pageX}px"
      menu.classList.add('opened')
      e.stopPropagation()

    menu.onclick = (e)->
      menu.classList.remove('opened')

    $(window).on 'click', ->
      menu.classList.remove('opened')

$(document).on 'page:load', ready
$(document).ready ready
