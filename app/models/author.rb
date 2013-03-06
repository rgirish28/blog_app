class Author < ActiveRecord::Base
  has_many :posts
  attr_accessible :bio, :email, :facebook, :name, :twitter, :website
end
