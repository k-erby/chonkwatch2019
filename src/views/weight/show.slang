h1 show weight
p = weight.pounds
p
  == link_to("back", "/weights", class: "btn btn-light btn-sm")
  == link_to("edit", "/weights/#{weight.id}/edit", class: "btn btn-success btn-sm")
  == link_to("delete", "/weights/#{weight.id}?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-sm")
