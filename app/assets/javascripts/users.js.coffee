# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('.popover-sign-in').popover({html : true, title : "Sign In", placement : "bottom"})
    .parent().delegate "form#sign_in_user", "ajax:success", (e, data, status, xhr) ->
      response(data, "#error-sign-in")
          
  $('.popover-sign-up').popover({html : true, title : "Sign Up", placement : "bottom"})
    .parent().delegate "form#sign_up_user", "ajax:success", (e, data, status, xhr) ->
      response(data, "#error-sign-up")
      
  response = (data, error_id) ->
    if data.success
      window.location.assign(window.location.href)
    else
      $(error_id).html("<div class='alert alert-error'>#{data.error}</div>" )