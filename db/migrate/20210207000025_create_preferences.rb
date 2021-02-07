class CreatePreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :preferences do |t|
      t.boolean :allow_create_artist
      t.boolean :allow_create_song

      t.timestamps
    end
  end
end
