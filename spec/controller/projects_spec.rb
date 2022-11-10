
require "rails_helper"

RSpec.describe ProjectsController, type: :controller do
  context "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe "responds to" do
    it "responds to html by default" do
      post :create, :params => {:project => {:name => "Any name"}}
      expect(response.content_type).to eq "text/html; charset=utf-8"
    end
    it "responds to custom formats when provided in the params" do
      post :create, :params => {:project => {:name => "Any Name"}, :format => :json}
      expect(response.content_type).to eq "application/json; charset=utf-8"
    end
  end

  context "GET #show" do
    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      get :show, params: { id: project }
      expect(response).to be_successful
    end
  end
 
end

