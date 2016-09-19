require 'rails_helper'

RSpec.describe "financial_events/new", type: :view do
  before(:each) do
    assign(:financial_event, FinancialEvent.new(
      :branch => nil,
      :customer => nil,
      :type => "",
      :amount => "9.99"
    ))
  end

  it "renders new financial_event form" do
    render

    assert_select "form[action=?][method=?]", financial_events_path, "post" do

      assert_select "input#financial_event_branch_id[name=?]", "financial_event[branch_id]"

      assert_select "input#financial_event_customer_id[name=?]", "financial_event[customer_id]"

      assert_select "input#financial_event_type[name=?]", "financial_event[type]"

      assert_select "input#financial_event_amount[name=?]", "financial_event[amount]"
    end
  end
end
