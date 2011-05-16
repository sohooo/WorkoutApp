class Workout < ActiveRecord::Base
  has_many :exercises, :dependent => :delete_all
end
