class Book < ApplicationRecord
  acts_as :artwork

  validates :synopsis, presence: true
end
