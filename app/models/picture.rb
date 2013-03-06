class Picture < ActiveRecord::Base
  belongs_to :imageable
  attr_accessible :name
end
