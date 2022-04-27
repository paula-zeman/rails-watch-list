class Review < ApplicationRecord
  belongs_to :list
  validates :comment, presence: true
  validates :rating, numerality: { only_integer: true, greater_than_orequal_to: 1, less_than_or_equal_to: 10 }
end
