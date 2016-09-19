require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :branch => nil,
      :customer => nil,
      :cost => "9.99",
      :status => "MyString"
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_branch_id[name=?]", "order[branch_id]"

      assert_select "input#order_customer_id[name=?]", "order[customer_id]"

      assert_select "input#order_cost[name=?]", "order[cost]"

      assert_select "input#order_status[name=?]", "order[status]"
    end
  end
end
