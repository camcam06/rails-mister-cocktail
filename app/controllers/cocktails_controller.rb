class CocktailsController < ApplicationController
  # before_action :set_cocktail, only: [:show, :edit, :update, :destroy]
  def index
    @cocktails = Cocktail.all
  end

#   # GET /cocktails/1
  def show
    @cocktail = Cocktail.find(params[:id])
  end

#   # GET /cocktails/new
  def new
    @cocktail = Cocktail.new
  end

#   # GET /cocktails/1/edit
  def edit
    @cocktail = Cocktail.find(params[:id])
  end

#   # POST /cocktails
  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to @cocktail, notice: 'cocktail was successfully created.'
    else
      render :new
    end
  end

#   # PATCH/PUT /cocktails/1
  def update
    @cocktail = Cocktail.find(params[:id])
    if @cocktail.update(cocktail_params)
      redirect_to @cocktail, notice: 'cocktail was successfully updated.'
    else
      render :edit
    end
  end

#   # DELETE /cocktails/1
  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_url, notice: 'cocktail was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
#     def set_garden
#       @cocktail = cocktail.find(params[:id])
#     end

#     # Only allow a trusted parameter "white list" through.
    def cocktail_params
      params.require(:cocktail).permit(:name)
    end
end
