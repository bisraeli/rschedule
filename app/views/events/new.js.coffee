$ ->
  $("#sf-add-event-content").html("<%=j render partial: 'new_form', layout: false %>")
  $("#sf-add-event").show()
  @sf_general_binding()
  @sf_add_window()