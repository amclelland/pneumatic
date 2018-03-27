class Tube < ApplicationRecord
  has_many :capsules, dependent: :destroy
end
