require 'rails_helper'

RSpec.describe EmployersController, type: :routing do
  describe "routing" do

    # Employers-routes

    it "routes to #index" do
      expect(:get => "/").to route_to("employers#index")
    end

    it "routes to #create" do
       expect(:post => "/employers").to route_to("employers#create")
    end

    it "routes to #new" do
      expect(:get => "/employers/new").to route_to("employers#new")
    end

    it "routes to #edit" do
      expect(:get => "/employers/1/edit").to route_to("employers#edit", id: "1")
    end

    it "routes to #show" do
      expect(:get => "/employers/1").to route_to("employers#show", id: "1")
    end

    it "routes to #update" do
      expect(:patch => "/employers/1").to route_to("employers#update", id: "1")
    end

  end
end