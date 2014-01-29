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
