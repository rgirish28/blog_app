class FollowingRelationship < ActiveRecord::Base
  belongs_to :follower, :class_name => "Author"
  belongs_to :following, :class_name => "Author"
  # attr_accessible :title, :body
end
