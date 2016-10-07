FactoryGirl.define do
  factory :address do
    contact
    country
    state
    street { FFaker::Address.street_address }
    zipcode { FFaker::Address.zip_code }
    address_type 0
    is_default false
  end
end