class CreateExercises < ActiveRecord::Migration
  def self.up
    create_table :exercises do |t|
      t.text :name, :null => false
      t.integer :workout_id
      t.integer :sets, :default => 1
      t.integer :reps
      t.integer :weight

      t.timestamps
    end
  end

  def self.down
    drop_table :exercises
  end
end
