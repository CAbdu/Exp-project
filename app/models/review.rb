class Review < ApplicationRecord
  belongs_to :user
  belongs_to :opinion

  validates :rating, presence: true
end
