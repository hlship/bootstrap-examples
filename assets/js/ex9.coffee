jQuery ($) ->
  $("body").on "click", ".nav-pills .dropdown-menu a", ->
    $("""
<div class="alert fade in">
  <a class="close" data-dismiss="alert">&times;</a>
  <strong>You selected #{this.innerHTML}.</strong>
</div>
""").appendTo $("body")