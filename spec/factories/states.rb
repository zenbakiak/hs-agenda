FactoryGirl.define do
  factory :state do
    country
    name { FFaker::AddressMX.state }
  end
end
