class Author < ApplicationRecord
  has_many :joins
  has_many :books, through: :joins, dependent: :destroy

   validates :first_name, presence: true, 
                      uniqueness: { case_sensitive: false }, 
                      length: { minimum: 3, maximum: 25 }
    validates :last_name, presence: true, 
                      uniqueness: { case_sensitive: false }, 
                      length: { minimum: 3, maximum: 25 }

    validates :date_of_birth, presence: true, 
                      uniqueness: { case_sensitive: false }, 
                      length: { minimum: 3, maximum: 25 }

end
