class AddManagerToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :manager, :string
  end
end
