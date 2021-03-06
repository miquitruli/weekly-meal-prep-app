class RecipesController < ApplicationController
    def index
        @recipes = current_user.recipes.all
        @week = Week.new
    end

    def new
        @recipe = Recipe.new
    end

    def show
        @recipe = Recipe.find(params[:id])
    end

    def create
        @recipe = current_user.recipes.new(recipe_params) #this will automatically add the user id
        if @recipe.save
            redirect_to new_recipe_ingredient_path(@recipe)
        else
            render :new
        end
    end

    def edit
        @recipe = Recipe.find(params[:id])
    end

    def update
        @recipe = Recipe.find(params[:id])
        if @recipe.update(recipe_params)
            redirect_to new_recipe_ingredient_path(@recipe)
        else
            render :edit
        end
    end

    def destroy
        @recipe = Recipe.find_by(params[:recipe_id])
        @recipe.destroy
        redirect_to recipes_path
    end


    private

    def recipe_params
        params.require(:recipe).permit(:name, :description)
    end
end