row.d-flex.justify-content-center
  .col-6.col-md-4
    h1.text-center#title
      | chonkwatch
    p.text-center#description
      | monty is a bit of a chonk. hopefully he can lose some of
      that pudge. guess we'll see.

row.d-flex.justify-content-around#weight-info
  .col-5.col-md-5
    - if weights.last?
      h2.text-center = weights.last.pounds
    - else
      h2.text-center no current weight
    p.text-center current weight
  .col-5.col-md-5
    h2.text-center 12.0
    p.text-center goal weight
