class AddTagNamesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :tag_names, :text
  end
end
