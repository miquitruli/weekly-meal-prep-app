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
        recipe_ids.each do |recipe_id|
            RecipeWeek.create( week_id: week.id, recipe_id: recipe_id)
        end
        redirect_to dashboards_path
    end
end