require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :branch => nil,
      :customer => nil,
      :cost => "9.99",
      :status => "MyString"
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input#order_branch_id[name=?]", "order[branch_id]"

      assert_select "input#order_customer_id[name=?]", "order[customer_id]"

      assert_select "input#order_cost[name=?]", "order[cost]"

      assert_select "input#order_status[name=?]", "order[status]"
    end
  end
end
