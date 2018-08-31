class DeleteAddressFromStore < ActiveRecord::Migration[5.2]
  def change
    remove_column :stores, :address
  end
end
