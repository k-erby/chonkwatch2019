- if weight.errors
  ul.errors
    - weight.errors.each do |error|
      li = error.to_s

== form(action: "/weights/#{weight.id.to_s}", method: weight.id ? :patch : :post) do
  == csrf_tag
  .form-group
    == text_field(name: "pounds", value: weight.pounds, placeholder: "pounds", class: "form-control")
  == submit("submit", class: "btn btn-success btn-sm")
  == link_to("back", "/weights", class: "btn btn-light btn-sm")
