class Address < ActiveRecord::Base
  belongs_to :contact
  belongs_to :country
  belongs_to :state
end
