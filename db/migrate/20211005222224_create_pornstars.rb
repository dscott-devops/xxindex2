class CreatePornstars < ActiveRecord::Migration[6.1]
  def change
    create_table :pornstars do |t|
      t.string :name
      t.date :dob
      t.string :from
      t.string :years
      t.string :ethnicity
      t.string :nationality
      t.string :measurements
      t.string :brasize
      t.integer :height
      t.integer :weight
      t.string :bodytype
      t.string :eyecolor
      t.string :hair
      t.string :show
      t.boolean :solo
      t.boolean :lesbian
      t.string :sex
      t.boolean :hetero
      t.text :special
      t.text :story

      t.timestamps
    end
  end
end
