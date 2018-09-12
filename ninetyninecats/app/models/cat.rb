class Cat < ApplicationRecord
  validates :sex, inclusion: { in: %w(M F), message: "%{value} is not a valid sex"}
  validates :color, inclusion: { in: %w(black brown white grey orange blue), message: "%{value} is not a valid color"}
  
  has_many :cat_rental_requests,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: :CatRentalRequest
  
end