class CreatePornstarVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :pornstar_videos do |t|
      t.references :pornstar, null: false, foreign_key: true
      t.references :video, null: false, foreign_key: true

      t.timestamps
    end
  end
end
