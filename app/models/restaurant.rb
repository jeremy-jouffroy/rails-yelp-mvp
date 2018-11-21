class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, format: { with: /(chinese|italian|japanese|french|belgian)/ }
end
