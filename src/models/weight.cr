class Weight < Granite::Base
  connection sqlite
  table weights

  column id : Int64, primary: true
  column pounds : Float64?
end
