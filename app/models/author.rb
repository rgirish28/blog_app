class Author < ActiveRecord::Base
  has_many :posts
  has_one :picture
  attr_accessible :bio, :email, :facebook, :name, :twitter, :website
end
