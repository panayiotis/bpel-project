require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :name => "MyString",
      :category => nil,
      :price => "9.99",
      :description => "MyString",
      :preparation_time => 1
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_category_id[name=?]", "product[category_id]"

      assert_select "input#product_price[name=?]", "product[price]"

      assert_select "input#product_description[name=?]", "product[description]"

      assert_select "input#product_preparation_time[name=?]", "product[preparation_time]"
    end
  end
end
