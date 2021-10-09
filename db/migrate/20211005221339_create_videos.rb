class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|
      t.string :site
      t.text :embed
      t.text :pornstars
      t.text :category
      t.integer :duration
      t.integer :views
      t.integer :likes
      t.integer :dislikes
      t.text :bigthumb
      t.text :bigthumbs
      t.text :weblink
      t.text :title
      t.string :thumb
      t.text :tags
      t.integer :video_id
      t.text :thumbs
      t.text :preview
      t.text :description

      t.timestamps
    end
  end
end
