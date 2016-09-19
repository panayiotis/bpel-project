require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        :name => "Name",
        :billing_address => "Billing Address",
        :shipping_address => "Shipping Address"
      ),
      Customer.create!(
        :name => "Name",
        :billing_address => "Billing Address",
        :shipping_address => "Shipping Address"
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Billing Address".to_s, :count => 2
    assert_select "tr>td", :text => "Shipping Address".to_s, :count => 2
  end
end
