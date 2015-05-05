ready = () ->
  contexts = document.querySelectorAll('[data-context-menu]')
  menus = document.querySelectorAll('.context-menu')

  Array::.forEach.call menus, (menu)->
    menu.attachTo = (context) ->
      context.onclick = (e)->
        this.open(e.pageX, e.pageY)
        e.stopPropagation()
    menu.open = (x,y)->
      closeAllMenus()
      this.style.top = "#{y}px"
      this.style.left = "#{x}px"
      this.classList.add('opened')
    menu.close = ->
      this.classList.remove('opened')
    menu.onclick = close

  Array::.forEach.call contexts, (context)->
    menu = document.querySelector(context.getAttribute('data-context-menu'))
    context.onclick = (e)->
      menu.open(e.pageX, e.pageY)
      e.stopPropagation()

  $(window).on 'click', ->
    closeAllMenus()

  closeAllMenus = ->
    Array::.forEach.call menus, (menu)->
      menu.classList.remove('opened')


$(document).on 'page:load', ready
$(document).ready ready
