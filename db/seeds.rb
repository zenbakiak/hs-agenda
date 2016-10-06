# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mex = FactoryGirl.create(:country, name: 'México')
usa = FactoryGirl.create(:country, name: 'United States')

50.times do
  mex.states.create(name: FFaker::AddressMX.state)
  usa.states.create(name: FFaker::AddressUS.state)
end
