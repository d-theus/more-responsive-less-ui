ready = () ->
  modals = document.getElementsByClassName('modal')
  main = document.getElementsByClassName('main')[0]
  Array::forEach.call modals, (modal)->
    toggle = modal.querySelector('.toggle')
    toggle.onclick = ->
      modal.close()
    modal.open = (content) ->
      main.classList.add('blur') if main
      this.querySelector('.modal-content').innerHTML = content if content?
      this.classList.add('opened')
    modal.close = ()->
      modal.querySelector('.modal-content').innerHTML = ''
      modal.classList.remove('opened')
      main.classList.remove('blur') if main

$(document).on 'page:load', ready
$(document).ready ready
