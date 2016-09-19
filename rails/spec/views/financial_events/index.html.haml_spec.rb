require 'rails_helper'

RSpec.describe "financial_events/index", type: :view do
  before(:each) do
    assign(:financial_events, [
      FinancialEvent.create!(
        :branch => nil,
        :customer => nil,
        :type => "Type",
        :amount => "9.99"
      ),
      FinancialEvent.create!(
        :branch => nil,
        :customer => nil,
        :type => "Type",
        :amount => "9.99"
      )
    ])
  end

  it "renders a list of financial_events" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
