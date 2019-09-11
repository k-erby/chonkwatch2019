.row
  .col-sm-11
    h2 weights
  .col-sm-1
    a.btn.btn-success.btn-sm href="/weights/new" new
.table-responsive
  table.table.table-striped
    thead
      tr
        th pounds
        th actions
    tbody
      - weights.each do |weight|
        tr
          td = weight.pounds
          td
            span
              == link_to("show", "/weights/#{weight.id}", class: "btn btn-info btn-sm")
              == link_to("edit", "/weights/#{weight.id}/edit", class: "btn btn-success btn-sm")
              == link_to("delete", "/weights/#{ weight.id }?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-sm")
