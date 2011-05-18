module WorkoutsHelper
  def workout_counter
    Workout.count || 0
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

  # def workout_count(workouts)
  #   content_tag :div, :class => "workout_count" do
  #     if workouts.any?
  #       pluralize(workouts.size, "workout") + " total"
  #     else
  #       "no workouts performed"
  #     end
  #   end
  # end

  def last_workout(workouts)
    if workouts.any?
      latest = Workout.order("date DESC").first
      days_ago_in_words(latest.date)
    else
      "soon"
    end
  end

  def days_ago_in_words(date, include_seconds = false)
    to_time   = Time.now
    from_time = date.beginning_of_day
    days_ago  = ((to_time - from_time)/1.day).abs.round + 1
    [nil, "today", "yesterday"][days_ago] || 
      distance_of_time_in_words(from_time, to_time, include_seconds) + " ago"
  end
end

def with_weight?(exercise)
  !!exercise.weight
end
