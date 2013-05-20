class MakeArtistIdNotNull < ActiveRecord::Migration
  def up
    change_column :songs, :artist_id, :integer, :null => false
  end

  def down
    change_column :songs, :artist_id, :integer, :null => true
  end
end
