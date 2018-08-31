class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :zip
      t.belongs_to :store

      t.timestamps
    end
  end
end
