class Game < ApplicationRecord
  acts_as :artwork, validates_actable: false

  validates :synopsis, presence: true
end
