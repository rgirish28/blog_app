class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post
      t.string :name
      t.string :email
      t.string :website
      t.text :content

      t.timestamps
    end
    add_index :comments, :post_id
  end
end
