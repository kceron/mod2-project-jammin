class ChangeSongDurationType < ActiveRecord::Migration[6.0]
  def change
    change_column :songs, :duration, 'integer USING EXTRACT(EPOCH FROM duration)::INT'
  end
end
