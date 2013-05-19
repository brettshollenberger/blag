class MakeAuthorIdNotNull < ActiveRecord::Migration
  def up
    change_column :posts, :author_id, :integer, :null => false
  end

  def down
    change_column :posts, :author_id, :integer, :null => true
  end
end
