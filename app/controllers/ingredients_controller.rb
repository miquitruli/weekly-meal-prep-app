class IngredientsController < ApplicationController
    def index
        @recipe = Recipe.find(params[:recipe_id])
        @ingredients = @recipe.ingredients.order_by_name
    end
    
    def new
        @ingredient = Ingredient.new(recipe_id: params[:recipe_id])
    end

    def create
        @recipe = Recipe.find(params[:recipe_id])
        @ingredient = @recipe.ingredients.new(ingredient_params)
        if @ingredient.save
            redirect_to new_recipe_ingredient_path(@recipe), :notice =>  "Ingredient has been successfully added"
        else
            render :new
        end
    end

    def destroy
        recipe = Recipe.find(params[:recipe_id])
        ingredient= recipe.ingredients.find(params[:id])
        ingredient.destroy
        redirect_to new_recipe_ingredient_path(recipe)
    end
        

    private

    def ingredient_params
        params.require(:ingredient).permit(:name, :quantity, :measurement)
    end
end