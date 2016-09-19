require "rails_helper"

RSpec.describe FinancialEventsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/financial_events").to route_to("financial_events#index")
    end

    it "routes to #new" do
      expect(:get => "/financial_events/new").to route_to("financial_events#new")
    end

    it "routes to #show" do
      expect(:get => "/financial_events/1").to route_to("financial_events#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/financial_events/1/edit").to route_to("financial_events#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/financial_events").to route_to("financial_events#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/financial_events/1").to route_to("financial_events#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/financial_events/1").to route_to("financial_events#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/financial_events/1").to route_to("financial_events#destroy", :id => "1")
    end

  end
end
