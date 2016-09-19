require 'rails_helper'

RSpec.describe "branches/index", type: :view do
  before(:each) do
    assign(:branches, [
      Branch.create!(
        :address => "Address"
      ),
      Branch.create!(
        :address => "Address"
      )
    ])
  end

  it "renders a list of branches" do
    render
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
