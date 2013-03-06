class Author < ActiveRecord::Base
  attr_accessible :bio, :email, :facebook, :name, :twitter, :website
end
