require 'rails_helper'

RSpec.describe "financial_events/show", type: :view do
  before(:each) do
    @financial_event = assign(:financial_event, FinancialEvent.create!(
      :branch => nil,
      :customer => nil,
      :type => "Type",
      :amount => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/9.99/)
  end
end
