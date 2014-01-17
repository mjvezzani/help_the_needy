# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :needy_person do
    first_name "MyString"
    last_name "MyString"
    age 1
    address "MyString"
    comments "MyText"
    organization "MyString"
  end
end
