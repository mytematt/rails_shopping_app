class ChangeCodeToSku < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :code, :sku
  end
end
