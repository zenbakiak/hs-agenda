class State < ActiveRecord::Base
  belongs_to :country

  validates :name,
            presence: true

  validates :name,
            uniqueness: { scope: :country_id }

end
