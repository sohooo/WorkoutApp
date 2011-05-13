class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
    respond_to do |format|
      format.html # index.html.erb
      format.rss
    end
  end

  def create
    @workout = Workout.create!(params[:workout])
    flash[:notice] = "Workout created"
    respond_to do |format|
      format.html { redirect_to workouts_path }
      format.js
    end
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy
    respond_to do |format|
      format.html { redirect_to workouts_path }
      format.js
    end
  end
end
