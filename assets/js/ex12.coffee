jQuery ($) ->
  $subject = $("#subject")
  $controls = $("#controls")

  $controls.on "change", ->
    $subject.attr "class", ""
    $controls.find("input:checked").each ->
      $subject.addClass this.value

  validate = (elementId, callback) ->
    $element = $("##{elementId}")
    $group = $element.parents(".control-group")
    $group.removeClass("error").find("[data-error]").remove()

    msg = callback $element.val()

    if msg
      $group
        .addClass("error")
        .find(".controls")
        .append("""
          <p class="help-block" data-error=true>
            #{msg}
          </p>""")

  $subject.on "submit", ->

    validate "email", (val) ->
      if val.indexOf("@") < 1
        "Please enter a properly formatted E-Mail address."

    validate "confirm", (val) ->
      if val != $("#email").val()
        "Please enter the same E-Mail address twice."

    return false