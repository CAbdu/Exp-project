class Opinion < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
