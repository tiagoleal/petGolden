class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.text :observations

      t.timestamps
    end
  end
end
