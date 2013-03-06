class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :author
      t.string :title
      t.text :content
      t.date :posted
      t.integer :likes
      t.integer :shares

      t.timestamps
    end
    add_index :posts, :author_id
  end
end
