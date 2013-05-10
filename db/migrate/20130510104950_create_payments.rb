class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :name
      t.string :category
      t.decimal :price

      t.timestamps
    end
  end
end
