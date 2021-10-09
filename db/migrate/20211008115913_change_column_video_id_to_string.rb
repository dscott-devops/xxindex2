class ChangeColumnVideoIdToString < ActiveRecord::Migration[6.1]
  def change
    change_column :videos, :video_id, :string
  end
end
