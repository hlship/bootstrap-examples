jQuery ($) ->
  $("body").on "click", ".nav-pills .dropdown-menu a",
    (event) ->
      $("""
<div class="alert fade in">
  <a class="close" data-dismiss="alert">&times;</a>
  <strong>You selected #{event.target.innerHTML}.</strong>
</div>
""").appendTo $("body")