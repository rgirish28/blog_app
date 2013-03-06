class CreateFollowingRelationships < ActiveRecord::Migration
  def change
    create_table :following_relationships do |t|
      t.references :follower
      t.references :following

      t.timestamps
    end
    add_index :following_relationships, :follower_id
    add_index :following_relationships, :following_id
  end
end
