FactoryGirl.define do
  factory :proposal do
    title "MyString"
    description "MyText"
    price 1.5
    promo_price 1.5
    currency "MyString"
    street "MyString"
    house_number "MyString"
    approved false
    author nil
  end
end