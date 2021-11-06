class CreateDiscounts < ActiveRecord::Migration[5.2]
  def change
    create_table :discounts do |t|
      t.string :title
      t.decimal :value

      t.timestamps
    end
  end
end
