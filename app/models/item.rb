class Item < ActiveRecord::Base
  attr_accessible :category, :name, :price

  validates :category,  presence: true, length: { maximum: 50 }
  validates :name,  presence: true, length: { maximum: 50 }
  validates :price, presence: true
end