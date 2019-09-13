.row.d-flex.justify-content-center
  .col
    h1.text-center.mx-auto#title
      | chonkwatch
    p.text-center.mx-auto#description
      | monty is a bit of a chonk. hopefully he can lose some of
      that pudge. guess we'll see.

.row.d-flex.justify-content-around#weight-info
  .col-5.col-md-5
    - if weight
      h2.text-center = weight.pounds
    - else
      h2.text-center no current weight
    p.text-center current weight
  .col-5.col-md-5
    h2.text-center 12.0
    p.text-center goal weight
