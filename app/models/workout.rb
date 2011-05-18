class Workout < ActiveRecord::Base
  has_many :exercises, :dependent => :delete_all

  default_scope order('date desc')
end
