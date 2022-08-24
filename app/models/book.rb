class Book < ApplicationRecord
  has_many :joins
  has_many :authors, through: :joins
end
