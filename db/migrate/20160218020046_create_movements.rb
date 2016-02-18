class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.string :class
      t.date :date
      t.string :description
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
