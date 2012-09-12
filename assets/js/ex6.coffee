jQuery ($) ->
  $nav = $ "#stooges ul.nav"
  $("#nav-modifiers").on "change", ->
    $nav.removeClass().addClass "nav"
    $("#nav-modifiers input:checked").each ->
      $nav.addClass $(this).val()

  $tabbable = $ "#stooges"

  $("#tabbable-modifiers").on "change", ->
    $tabbable.removeClass().addClass "tabbable"
    $("#tabbable-modifiers input:checked").each ->
      $tabbable.addClass $(this).val()
