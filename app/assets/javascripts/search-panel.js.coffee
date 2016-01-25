$(document).ready (e) ->
  $('.search-panel .dropdown-menu').find('a').click (e) ->
    e.preventDefault()
    param = $(@).attr('href').replace('#', '')
    concept = $(@).text()
    $('.search-panel span#search_concept').text concept
    $('.input-group #search_param').val param