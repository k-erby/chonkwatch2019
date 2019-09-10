h1 Show Weight
p = weight.pounds
p
  == link_to("Back", "/weights", class: "btn btn-light btn-sm")
  == link_to("Edit", "/weights/#{weight.id}/edit", class: "btn btn-success btn-sm")
  == link_to("Delete", "/weights/#{weight.id}?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-sm")
