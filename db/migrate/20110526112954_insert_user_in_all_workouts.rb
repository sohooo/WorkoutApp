class InsertUserInAllWorkouts < ActiveRecord::Migration
  def self.up
    user = User.first
    Workout.where(:user_id => nil).each do |workout|
      workout.user = user
      workout.save
    end
  end

  def self.down
  end
end
