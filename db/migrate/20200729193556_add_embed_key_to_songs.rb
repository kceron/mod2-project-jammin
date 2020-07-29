class AddEmbedKeyToSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :embed_key, :string
  end
end
