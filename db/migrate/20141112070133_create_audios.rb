class CreateAudios < ActiveRecord::Migration
  def change
    create_table :audios do |t|
      t.string :title
      t.string :audio
      t.string :artist
      t.references :album, index: true

      t.timestamps
    end
  end
end
