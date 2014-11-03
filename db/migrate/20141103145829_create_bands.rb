class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.text :description
      t.text :news

      t.timestamps
    end
  end
end
