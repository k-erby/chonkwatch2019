class HomeController < ApplicationController
  getter weight = Weight.new

  def index
    weight = Weight.order(id: :desc).select.first?
    render "index.slang"
  end
end
