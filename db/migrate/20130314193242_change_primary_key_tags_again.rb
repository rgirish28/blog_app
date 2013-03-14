class ChangePrimaryKeyTagsAgain < ActiveRecord::Migration
  def change
    remove_column :tags, :name
    add_column :tags, :name, :string
    add_column :tags, :id, :primary_key
  end
end
