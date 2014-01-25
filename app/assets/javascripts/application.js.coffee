# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require jquery
#= require jquery_ujs
#= require bootstrap.min
#= require bets
#= require browser_timezone_rails/application.js
#= require_tree .

$ ->
  $.ajaxSetup({ cache: true })
  $.getScript "//connect.facebook.net/en_UK/all.js", ->
    FB.init(
      appId: 1435514109999765
      frictionlessRequests: true
      cookie: true
    )
    $("#loginbutton, #feedbutton").removeAttr("disabled")
    # FB.getLoginStatus()

  requestCallback = ->

  $(".fb-invite").on "click", ->
    event.preventDefault()
    FB.ui
      method: "apprequests"
      message: "Juguemos juntos al pollón - la polla de fútbol en linea!"
    , requestCallback

