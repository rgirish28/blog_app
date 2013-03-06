class CreatePostsTag < ActiveRecord::Migration
  def change
      create_table :posts_tag do |t|
        t.references :post
        t.references :tag
      end
      add_index :posts_tag, :post_id
      add_index :posts_tag, :tag_id
  end
end