class Follower < ActiveRecord::Base

  belongs_to :follower, :class_name => "User"
end
