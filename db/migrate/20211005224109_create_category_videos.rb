class CreateCategoryVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :category_videos do |t|
      t.references :category, null: false, foreign_key: true
      t.references :video, null: false, foreign_key: true
      t.timestamps
    end
  end
end
