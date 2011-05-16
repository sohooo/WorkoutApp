module WorkoutsHelper
  def workout_counter
    pluralize(Workout.count, "workout")
  end

  def to_kg(weight)
    if weight
      if weight > 0
      "#{weight} kg"
      end
    else
      ""
    end
  end

  def days_ago_in_words(date, include_seconds = false)
    to_time   = Time.now
    from_time = date.beginning_of_day
    days_ago  = ((to_time - from_time)/1.day).abs.round
    ["today", "yesterday"][days_ago] || 
      distance_of_time_in_words(from_time, to_time, include_seconds) + " ago"
  end
end
