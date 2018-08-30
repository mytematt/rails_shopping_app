class Item < ApplicationRecord
  belongs_to :list
  validates :sku, length: { is: 4 }

  def self.by_code
    order(:sku)
  end

  def item_price
    "#{self.name} {self.price}"
  end

end
