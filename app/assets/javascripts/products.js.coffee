# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $("input[id='field']").keyup ->
    console.log('-----------')
    $.ajax '/',
      type: 'GET'
      dataType: {name: 4, value: this.value}
    console.log(this.value)

