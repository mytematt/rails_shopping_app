class Item < ApplicationRecord
  belongs_to :list
  validates :code, length: { is: 4 }

  def self.by_code
    order(:code) asc
  end

end
