require 'rails_helper'

RSpec.describe "customers/show", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :name => "Name",
      :billing_address => "Billing Address",
      :shipping_address => "Shipping Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Billing Address/)
    expect(rendered).to match(/Shipping Address/)
  end
end
