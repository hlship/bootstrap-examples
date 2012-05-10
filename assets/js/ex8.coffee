jQuery ($) ->
  $(".x-danger-alert .btn-warning").on "click", ->
    alert = $("""
      <div class="alert fade in">
        <a class="close" data-dismiss="alert">&times;</a>
        <strong>Well, you pressed it!</strong>
      </div>
    """)
    alert.prependTo $(".container")
