class CreateJoinTableBandsSongs < ActiveRecord::Migration
  def change
    create_join_table :bands, :songs do |t|
       t.index :band_id
       t.index :song_id
    end
  end
end
