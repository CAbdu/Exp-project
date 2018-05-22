class Artwork < ApplicationRecord
  actable
  belongs_to :opinion
  has_many :opinions, dependent: :destroy


  # validates :title, presence: true
  # validates :artist, presence: true
  # validates :released_on, presence: true
end
