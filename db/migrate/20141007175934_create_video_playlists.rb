class CreateVideoPlaylists < ActiveRecord::Migration
  def change
    create_table :video_playlists do |t|
      t.references :video, index: true
      t.references :playlist, index: true

      t.timestamps
    end
  end
end
