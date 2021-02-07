class RemoveAllowCreateArtistAndAllowCreateSongFromPreferences < ActiveRecord::Migration[5.0]
  def change
    remove_column :preferences, :allow_create_artist, :boolean
    remove_column :preferences, :allow_create_song, :boolean
  end
end
