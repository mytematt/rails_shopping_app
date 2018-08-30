class Store < ApplicationRecord
  #validations

  #associations
    has_many :lists, dependent: :destroy
  #callbacks

  #Instance .class methods

end
