class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :file
      t.references :audioable, polymorphic: true
      t.timestamps
    end
  end
end
