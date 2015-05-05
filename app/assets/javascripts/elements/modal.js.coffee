ready = () ->
  modals = document.getElementsByClassName('modal')
  main = document.querySelector('.main')
  Array::.forEach.call modals, (modal)->
    toggle=modal.querySelector('.toggle')
    toggle.onclick = ->
      modal.close()
    modal.open = (content='') ->
      main.classList.add('blur')
      this.querySelector('.modal-content').innerHTML = content
      this.classList.add('opened')
    modal.close = ()->
      modal.querySelector('.modal-content').innerHTML = ''
      modal.classList.remove('opened')
      main.classList.remove('blur')

$(document).on 'page:load', ready
$(document).ready ready