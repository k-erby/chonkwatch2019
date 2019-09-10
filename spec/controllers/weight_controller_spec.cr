require "./spec_helper"

def weight_hash
  {"pounds" => "1.00"}
end

def weight_params
  params = [] of String
  params << "pounds=#{weight_hash["pounds"]}"
  params.join("&")
end

def create_weight
  model = Weight.new(weight_hash)
  model.save
  model
end

class WeightControllerTest < GarnetSpec::Controller::Test
  getter handler : Amber::Pipe::Pipeline

  def initialize
    @handler = Amber::Pipe::Pipeline.new
    @handler.build :web do
      plug Amber::Pipe::Error.new
      plug Amber::Pipe::Session.new
      plug Amber::Pipe::Flash.new
    end
    @handler.prepare_pipelines
  end
end

describe WeightControllerTest do
  subject = WeightControllerTest.new

  it "renders weight index template" do
    Weight.clear
    response = subject.get "/weights"

    response.status_code.should eq(200)
    response.body.should contain("weights")
  end

  it "renders weight show template" do
    Weight.clear
    model = create_weight
    location = "/weights/#{model.id}"

    response = subject.get location

    response.status_code.should eq(200)
    response.body.should contain("Show Weight")
  end

  it "renders weight new template" do
    Weight.clear
    location = "/weights/new"

    response = subject.get location

    response.status_code.should eq(200)
    response.body.should contain("New Weight")
  end

  it "renders weight edit template" do
    Weight.clear
    model = create_weight
    location = "/weights/#{model.id}/edit"

    response = subject.get location

    response.status_code.should eq(200)
    response.body.should contain("Edit Weight")
  end

  it "creates a weight" do
    Weight.clear
    response = subject.post "/weights", body: weight_params

    response.headers["Location"].should eq "/weights"
    response.status_code.should eq(302)
    response.body.should eq "302"
  end

  it "updates a weight" do
    Weight.clear
    model = create_weight
    response = subject.patch "/weights/#{model.id}", body: weight_params

    response.headers["Location"].should eq "/weights"
    response.status_code.should eq(302)
    response.body.should eq "302"
  end

  it "deletes a weight" do
    Weight.clear
    model = create_weight
    response = subject.delete "/weights/#{model.id}"

    response.headers["Location"].should eq "/weights"
    response.status_code.should eq(302)
    response.body.should eq "302"
  end
end
