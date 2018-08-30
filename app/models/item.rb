class Item < ApplicationRecord
  belongs_to :list
  validates :sku, length: { is: 4 }

  def self.by_code
    order(:sku)
  end

  def item_price
    "#{self.name} {self.price}"
  end

  before_validation :ensure_sku_has_value

  private
   def ensure_sku_has_value
    if sku.nil?
      self.sku = 1111
    end  
  end

end
