class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :caption

      t.integer	:places_id
      t.timestamps
    end
    add_index :photos, :places_id
  end
end
