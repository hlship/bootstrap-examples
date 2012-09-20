jQuery ($) ->
  $bar = $(".bar")

  width = 0

  advance = ->
    width += 10

    $bar.css("width", "#{width}%").text("#{width} %")

    if width is 60
      $bar.addClass "bar-warning"

    if width is 90
      $bar.addClass("bar-danger").removeClass("bar-warning")

    if width < 100
      window.setTimeout advance, 1000

  advance()