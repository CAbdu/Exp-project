class Music < ApplicationRecord
  acts_as :artwork, validates_actable: false

end
