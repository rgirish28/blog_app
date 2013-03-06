class Picture < ActiveRecord::Base
  belongs_to :imageable
  has_many :pictures
  attr_accessible :name
end
