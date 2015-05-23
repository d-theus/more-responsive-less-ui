ready = () ->
  modals = document.getElementsByClassName('modal')
  main = document.getElementsByClassName('main')[0]
  triggers = document.querySelectorAll('[data-modal]')
  Array::forEach.call modals, (modal)->
    toggle = modal.querySelector('.toggle')
    toggle.onclick = ->
      modal.close()
    modal.open = (content) ->
      main.classList.add('blur') if main
      this.querySelector('.modal-content').innerHTML = content if content?
      this.classList.add('opened')
    modal.loading = () ->
      modal.open('<span class="flaticon flaticon-preloader"></span>')
    modal.close = ()->
      modal.querySelector('.modal-content').innerHTML = ''
      modal.classList.remove('opened')
      main.classList.remove('blur') if main
  Array::forEach.call triggers, (trigger)->
    modal_id = trigger.dataset['modal']
    modal    = document.getElementById(modal_id)
    url      = trigger.dataset['url']
    trigger.onclick = ->
      if url
        modal.loading()
        $.ajax(
          url: url,
          success: (data)->
            modal.open(data)
        )
      else
        modal.open()

$(document).on 'page:load', ready
$(document).ready ready
