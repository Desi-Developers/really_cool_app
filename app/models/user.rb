class User < ApplicationRecord
  validates :name, presence: true
  validates :age, numericality: { greater_than_or_equal_to: 13, less_than_or_equal_to: 65 }
end
