jQuery ($) ->
  $table = $("table.span12")
  $span = $table.find("caption > span")

  $span.text $table[0].className

  $("form.well input[type=checkbox]").on "change", ->
    action = if this.checked then "addClass" else  "removeClass"
    $table[action](this.value)
    $span.text $table[0].className