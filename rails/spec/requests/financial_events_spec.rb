require 'rails_helper'

RSpec.describe "FinancialEvents", type: :request do
  describe "GET /financial_events" do
    it "works! (now write some real specs)" do
      get financial_events_path
      expect(response).to have_http_status(200)
    end
  end
end
