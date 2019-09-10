.row
  .col-sm-11
    h2 Weights
  .col-sm-1
    a.btn.btn-success.btn-sm href="/weights/new" New
.table-responsive
  table.table.table-striped
    thead
      tr
        th Pounds
        th Actions
    tbody
      - weights.each do |weight|
        tr
          td = weight.pounds
          td
            span
              == link_to("Show", "/weights/#{weight.id}", class: "btn btn-info btn-sm")
              == link_to("Edit", "/weights/#{weight.id}/edit", class: "btn btn-success btn-sm")
              == link_to("Delete", "/weights/#{ weight.id }?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-sm")
