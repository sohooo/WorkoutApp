class Exercise < ActiveRecord::Base
  belongs_to :workout
  scope :uniquely_named, group(:name)
end
