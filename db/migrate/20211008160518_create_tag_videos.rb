class CreateTagVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :tag_videos do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :video, null: false, foreign_key: true

      t.timestamps
    end
  end
end
