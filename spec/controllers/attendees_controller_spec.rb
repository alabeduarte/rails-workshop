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
      post :create, attendee: { name: "John Doe" }
      expect(assigns :attendee).to eq Attendee.first
    end

    it "should redirect to attendees/show/:id" do
      post :create, attendee: { name: "John Doe" }

      attendee = Attendee.first
      expect(response).to redirect_to "/attendees/#{attendee.id}"
    end
  end

  describe "GET #show" do
    before(:each) { Attendee.create(name: "John Doe") }

    it "should assign attendee" do
      get :show, id: 1
      expect(assigns :attendee).to eq Attendee.first
    end
  end

  describe "GET #index" do
    before(:each) do
      allow(Attendee).to receive(:all).and_return([{name: "Batman"}, {name: "Robin"}])
    end

    it "should assign attendees list" do
      get :index

      attendees = Attendee.all
      batman = attendees[0]
      robin = attendees[1]
      expect(assigns :attendees).to eq [batman, robin]
    end
  end
end
