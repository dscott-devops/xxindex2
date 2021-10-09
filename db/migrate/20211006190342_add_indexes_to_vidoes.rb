class AddIndexesToVidoes < ActiveRecord::Migration[6.1]
  def change
    add_index :videos, [:site, :video_id], unique: true
    add_index :videos, :site
    add_index :videos, :video_id
  end
end
