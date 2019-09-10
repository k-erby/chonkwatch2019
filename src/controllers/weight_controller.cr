class WeightController < ApplicationController
  getter weight = Weight.new

  before_action do
    only [:show, :edit, :update, :destroy] { set_weight }
  end

  def index
    weights = Weight.all
    render "index.slang"
  end

  def show
    render "show.slang"
  end

  def new
    render "new.slang"
  end

  def edit
    render "edit.slang"
  end

  def create
    weight = Weight.new weight_params.validate!
    if weight.save
      redirect_to action: :index, flash: {"success" => "Created weight successfully."}
    else
      flash[:danger] = "Could not create Weight!"
      render "new.slang"
    end
  end

  def update
    weight.set_attributes weight_params.validate!
    if weight.save
      redirect_to action: :index, flash: {"success" => "Updated weight successfully."}
    else
      flash[:danger] = "Could not update Weight!"
      render "edit.slang"
    end
  end

  def destroy
    weight.destroy
    redirect_to action: :index, flash: {"success" => "Deleted weight successfully."}
  end

  private def weight_params
    params.validation do
      required :pounds
    end
  end

  private def set_weight
    @weight = Weight.find! params[:id]
  end
end
