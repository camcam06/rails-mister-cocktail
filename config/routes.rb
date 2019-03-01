Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: :index
  resources :cocktails, only: :show
  resources :cocktails, only: :new
end
# resources :articles, shallow: true do
#   resources :comments
#   resources :quotes
#   resources :drafts
# end
# resources :articles do
#   resources :comments, only: [:index, :new, :create]
# end
# resources :comments, only: [:show, :edit, :update, :destroy]


# Validation

#     A cocktail must have a unique name.
#     An ingredient must have a unique name.
#     A dose must have a description, a cocktail and an ingredient, and [cocktail, ingredient] pairings should be unique.

# Associations

#     A cocktail has many doses
#     A cocktail has many ingredients through doses
#     An ingredient has many doses
#     A dose belongs to an ingredient
#     A dose belongs to a cocktail
#     You can't delete an ingredient if it used by at least one cocktail.
#     When you delete a cocktail, you should delete associated doses (but not the ingredients as they can be linked to other cocktails).


# GET "cocktails"

#     A user can see the details of a given cocktail, with the dose needed for each ingredient

# GET "cocktails/42"

#     A user can create a new cocktail

# GET "cocktails/new"
# POST "cocktails"

# 4 - Routing, Controller, Views for Doses

#     A user can add a new dose (ingredient/description pair) to an existing cocktail
#     Checkout simple_form docs about f.association to easily create a select dropdown for our list of ingredients.

# GET "cocktails/42/doses/new"
# POST "cocktails/42/doses"

#     A user can delete a dose that belongs to an existing cocktail. How can we make a delete link again?

# DELETE "doses/25"

# Do we need an IngredientsController?
