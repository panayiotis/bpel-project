require 'rails_helper'

RSpec.describe "product_categories/show", type: :view do
  before(:each) do
    @product_category = assign(:product_category, ProductCategory.create!(
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
