class AddEntityToMovements < ActiveRecord::Migration
  def change
    add_column :movements, :entity, :string
  end
end
