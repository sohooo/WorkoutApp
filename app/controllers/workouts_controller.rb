class WorkoutsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @workouts = current_user.workouts.all
    respond_to do |format|
      format.html # index.html.erb
      format.rss
    end
  end

  def create
    @workout = current_user.workouts.create!(params[:workout])
    flash[:notice] = "Workout created"
    respond_to do |format|
      format.html { redirect_to workouts_path }
      format.js
    end
  end

  def update
    @workout = current_user.workouts.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @workout = current_user.workouts.find(params[:id])
    @workout.destroy
    respond_to do |format|
      format.html { redirect_to workouts_path }
      format.js
    end
  end
end
