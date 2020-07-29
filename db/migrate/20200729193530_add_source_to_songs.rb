class AddSourceToSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :source, :string
  end
end
