@FBE ||= {}

@FBE.submitFeedback = (@$element) ->
  @$element.ajaxForm(
    onSuccess: ->
      $.mobile.changePage("#thank-you")
  )
