ready = ()->
  rolldown = ->
    @classList.add('rolled-down')
    @rolleddown = true

  rollup  = ->
    @classList.remove('rolled-down')
    @rolleddown = false

  collapses = document.getElementsByClassName('collapse')
  Array::forEach.call(collapses, (collapse)->
    c = collapse.getElementsByClassName('collapses')[0]
    t = collapse.getElementsByClassName('toggle')[0]
    return unless t?
    c.rolldown = rolldown
    c.rollup   = rollup
    t.onclick = ->
      if c.rolleddown then c.rollup() else c.rolldown()
  )


$(document).on 'page:load', ready
$(document).ready ready
