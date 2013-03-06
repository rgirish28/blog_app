class Author < ActiveRecord::Base
  has_many :posts
  has_one :picture, :as => :imageable
  attr_accessible :bio, :email, :facebook, :name, :twitter, :website
  
  has_many :following_relationships, :foreign_key => :follower_id
  has_many :following, :through => :following_relationships
  
  has_many :follower_relationships, :class_name => "FollowingRelationship", :foreign_key => :following_id
  has_many :followers, :through => :follower_relationships
end
