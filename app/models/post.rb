class Post < ActiveRecord::Base
  after_save :tag_split
  belongs_to :author
  has_many :pictures , :as => :imageable
  has_many :comments
  has_and_belongs_to_many :tags
  attr_accessible :content, :likes, :posted, :shares, :title, :tag_names
  
  def tag_split
    self.tag_names.split(',').each do |tags|
      if tag = Tag.find_by_name(tags)
        self.tags << tag
      else
        self.tags << Tag.create(:name => tags)
      end
    end
  end
        
          
  
end
