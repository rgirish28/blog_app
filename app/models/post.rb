class Post < ActiveRecord::Base
  belongs_to :author
  has_and_belongs_to_many :tags
  attr_accessible :content, :likes, :posted, :shares, :title
end
