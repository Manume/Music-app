class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :banner
      t.string :cover

      t.timestamps
    end
  end
end
