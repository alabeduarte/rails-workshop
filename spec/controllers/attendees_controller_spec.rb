require 'spec_helper'

describe AttendeesController, :type => :controller do
  describe "GET #new" do
    it "responds successfully with an HTTP 200 status code" do
      get :new
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "renders the index template" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "POST #create" do
    it "should assign created attendee" do
      post :create, name: "John Doe"
      expect(assigns(:attendee)).to eq(Attendee.new(name: 'John Doe'))
    end
  end
end
