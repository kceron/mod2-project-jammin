class CreateSong < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.time :duration
      t.belongs_to :artist, null: false, foreign_key: true
      t.belongs_to :genre, null: false, foreign_key: true
    end
  end
end
