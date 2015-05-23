#= require './highlight.pack.js'

ready = ->
  $('pre code').each ->
    hljs.highlightBlock($(this).get(0))

$(document).on 'page:load', ready
$(document).ready ready
