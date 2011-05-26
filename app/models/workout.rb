class Workout < ActiveRecord::Base
  belongs_to :user
  has_many :exercises, :dependent => :delete_all

  default_scope order('date desc')
end
