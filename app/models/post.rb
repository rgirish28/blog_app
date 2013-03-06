class Post < ActiveRecord::Base
  belongs_to :author
  attr_accessible :content, :likes, :posted, :shares, :title
end
