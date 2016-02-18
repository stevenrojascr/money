class RenameReservedWordColumns < ActiveRecord::Migration
  def change
    rename_column :movements, :class, :mov_class
  end
end
