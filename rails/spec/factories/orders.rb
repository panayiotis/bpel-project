FactoryGirl.define do
  factory :order do
    branch nil
    customer nil
    cost "9.99"
    status "MyString"
  end
end
