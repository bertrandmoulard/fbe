@FBE ||= {}

@FBE.submitFeedback = (@$element) ->
  @$element.find("input[type='submit']").parent().on("click", (e) =>
    @$element.submit()
  )
  @$element.ajaxForm(
    onSuccess: ->
      $.mobile.changePage("#thank-you")
  )
