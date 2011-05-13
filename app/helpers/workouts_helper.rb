module WorkoutsHelper
  def workout_counter
    pluralize(Workout.count, "workout")
  end
end
