class Store < ApplicationRecord
  #validations

  #associations
    has_many :lists, dependent: :destroy
    has_one :address, dependent: :destroy
  #callbacks
  
  #Instance .class methods

end
