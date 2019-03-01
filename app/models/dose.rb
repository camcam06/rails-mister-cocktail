class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, uniqueness: true, presence: true
  # validates_uniqueness_of :dose, scope: [:cocktail_id, :ingredient_id] #cannot eb deletes if used at least by once coktail
#A dose must have a description, a cocktail and an ingredient, and [cocktail, ingredient] pairings should be unique.
#A dose is the amount needed for each ingredient in a cocktail (e.g. the Mojito cocktail needs 6cl of lemon). So each dose references a cocktail, an ingredient and has a description.
end
