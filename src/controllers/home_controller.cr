class HomeController < ApplicationController
  getter weight = Weight.new

  def index
    weights = Weight.all
    render "index.slang"
  end
end
