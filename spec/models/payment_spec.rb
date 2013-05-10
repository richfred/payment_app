require 'spec_helper'

describe Payment do
  before { @payment = Payment.new(name: "Lumia", category: "phones", price: "800") }

  subject { @payment }

  it { should respond_to(:name) }
  it { should respond_to(:category) }
  it { should respond_to(:price) }
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

