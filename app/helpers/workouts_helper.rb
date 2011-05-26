module WorkoutsHelper
  def stat_workout_counter
    current_user.workouts.count || 0
  end

  def stat_last_workout
    latest = current_user.workouts.order("date DESC").first
    days_ago_in_words(latest.date)
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

  def last_workout(workouts)
    if workouts.any?
      latest = current_user.workouts.order("date DESC").first
      days_ago_in_words(latest.date)
    else
      "soon"
    end
  end

  def workout_activity(date)
    timeframe = date || 1.month

    end_date   = Date.today
    start_date = Date.today - timeframe

    workouts = current_user.workouts.where(:date => start_date..end_date)
    activity = []
    (start_date..end_date).step(1) do |day|
      if workouts.where(:date => day).any?
        activity << 1
      else
        activity << 0
      end
    end
    activity.join(",")
  end

  def days_ago_in_words(date, include_seconds = false)
    to_time   = Time.now
    from_time = date.beginning_of_day
    days_ago  = ((to_time - from_time)/1.day).abs.round
    [nil, "today", "yesterday"][days_ago] || 
      distance_of_time_in_words(from_time, to_time, include_seconds) + " ago"
  end
end

def with_weight?(exercise)
  !!exercise.weight
end
