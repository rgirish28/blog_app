class ChangePrimaryKeyTags < ActiveRecord::Migration
  def change
    remove_column :tags, :name
    rename_column :tags, :id, :name
  end

end
