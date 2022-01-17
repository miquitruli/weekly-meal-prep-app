class RecipeWeeksController < ApplicationController
    def destroy
        recipe_week = RecipeWeek.find(params[:id])
        recipe_week.destroy
        redirect_to dashboards_path
    end
end