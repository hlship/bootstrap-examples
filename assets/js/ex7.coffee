jQuery ($) ->
  tabs = $("ul.nav.nav-tabs")
  tabContent = $(".tab-content")

  _.each ["Moe Howard", "Larry Fine", "Curly Howard"],
    (name) ->
      firstName = name.split(' ')[0]
      uid = _.uniqueId "tab"

      tab = $("""
        <li>
          <a href="##{uid}" data-toggle="tab">
            #{firstName}
          </a>
        </li>
      """)
      content = $("""
        <div class="tab-pane fade" id="#{uid}">
          <h1>#{name}</h1>
          <img src="images/#{firstName.toLowerCase()}.jpg">
        </div>
      """)

      content.appendTo tabContent
      tab.appendTo tabs

  tabs.find("li:first").addClass "active"
  tabContent.find(".tab-pane:first").addClass "active in"