class CatRentalRequest < ApplicationRecord
  validates :status, :cat_id, presence: true 
  
  belongs_to :cat,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: :Cat
  
end 