class Show < ApplicationRecord
  acts_as :artwork, validates_actable: false

  validates :synopsis, presence: true
  validates :duration, presence: true
end
