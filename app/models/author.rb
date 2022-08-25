class Author < ApplicationRecord
  has_many :joins
  has_many :books, through: :joins, dependent: :destroy

end
