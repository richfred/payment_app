class Payment < ActiveRecord::Base
  attr_accessible :category, :name, :price

  validates :category,  presence: true, length: { maximum: 50 }
  validates :name,  presence: true, length: { maximum: 50 }
  validates :price, presence: true
end
# == Schema Information
#
# Table name: payments
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  category   :string(255)
#  price      :decimal(, )
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

