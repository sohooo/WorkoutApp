class ExercisesController < ApplicationController
  def create
    @exercise = Exercise.create(params[:exercise])
    @workout = Workout.find(params[:workout_id])
    @exercise.workout = @workout
    @exercise.save!
    flash[:notice] = "Exercise added"
    respond_to do |format|
      format.html { redirect_to workouts_path }
      format.js
    end
  end
end
