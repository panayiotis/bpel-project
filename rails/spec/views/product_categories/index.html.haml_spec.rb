require 'rails_helper'

RSpec.describe "product_categories/index", type: :view do
  before(:each) do
    assign(:product_categories, [
      ProductCategory.create!(
        :name => "Name",
        :description => "Description"
      ),
      ProductCategory.create!(
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of product_categories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
