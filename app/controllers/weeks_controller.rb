class WeeksController < ApplicationController
    def index
        @weeks = Week.all
    end

    def new
        @week = Week.new
    end

    def create
        week = current_user.weeks.find_by(created_at: Time.current.beginning_of_week..Time.current) #This creates a tiem frame from beginning of the week to current time
        if !week
            week = current_user.weeks.create(name: "Week #{Week.current_week}")
        end
        recipe_ids = params[:week].select{|k,v| v == "1"}.keys #selecting all recipe_ids that have the value of 1 which are the checked recipes
        RecipeWeek.create_from_week(recipe_ids, week)
        redirect_to dashboards_path
    end

    def update
        week_ingredient_ids = params[:week].select{|k,v| v == "1"}.keys
        WeekIngredient.where(id: week_ingredient_ids).update_all(checked: true)
        redirect_to dashboards_path
    end
end