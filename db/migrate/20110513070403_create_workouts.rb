class CreateWorkouts < ActiveRecord::Migration
  def self.up
    create_table :workouts do |t|
      t.date :date
      t.text :location

      t.timestamps
    end
  end

  def self.down
    drop_table :workouts
  end
end
