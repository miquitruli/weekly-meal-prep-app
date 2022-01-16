class DashboardsController < ApplicationController
    def index
        @week  = current_user.weeks.find_by(created_at: Time.current.beginning_of_week..Time.current)
    end
end