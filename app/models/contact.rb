class Contact < ActiveRecord::Base
  has_many :addresses

  validates :name, :nickname,
            presence: true
end
