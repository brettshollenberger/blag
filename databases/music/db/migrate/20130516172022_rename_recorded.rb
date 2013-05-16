class RenameRecorded < ActiveRecord::Migration
  def up
    rename_column :songs, :recorded, :year
  end

  def down
    rename_column :songs, :year, :recorded
  end
end
