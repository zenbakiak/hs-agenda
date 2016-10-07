FactoryGirl.define do
 factory :contact do
   name { FFaker::Name.name }
   nickname { FFaker::Internet.user_name }
   avatar { FFaker::Avatar.image }
   email { FFaker::Internet.email }
 end
end