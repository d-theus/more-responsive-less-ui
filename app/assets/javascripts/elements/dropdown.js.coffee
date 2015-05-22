ready = ->
  dropdowns = document.getElementsByClassName('dropdown')

  open = ->
    this.classList.add('opened')
  close = ->
    this.classList.remove('opened')
  toggle = ->
    this.classList.toggle('opened')

  Array::forEach.call dropdowns, (dd)->
    menu = dd.getElementsByClassName('dropdown-menu')[0]
    menu.open = open
    menu.close = close
    menu.toggle = toggle
    dd.onclick = ->
      menu.toggle()

$(document).on 'page:load', ready
$(document).ready ready
