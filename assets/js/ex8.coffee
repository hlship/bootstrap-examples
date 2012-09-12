jQuery ($) ->
  $("#danger-alert").on "click", ".btn-warning", ->
    alert = $("""
      <div class="alert fade in">
        <a class="close" data-dismiss="alert">&times;</a>
        <strong>Well, you pressed it!</strong>
      </div>
    """)
    alert.prependTo $("[data-alert-insertion-point]")
