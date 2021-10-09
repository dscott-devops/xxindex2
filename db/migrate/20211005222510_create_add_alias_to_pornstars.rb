class CreateAddAliasToPornstars < ActiveRecord::Migration[6.1]
  def change
    add_column :pornstars, :alias, :integer, array: true
    add_column :pornstars, :links, :string, array: true
  end
end
