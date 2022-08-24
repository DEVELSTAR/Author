class Book < ApplicationRecord
  has_many :joins, dependent: :destroy
  has_many :authors, through: :joins
end
