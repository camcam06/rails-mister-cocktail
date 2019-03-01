class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, presence: true
end

#You can't delete an ingredient if it used by at least one cocktail.
