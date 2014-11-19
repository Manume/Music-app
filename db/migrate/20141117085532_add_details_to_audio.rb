class AddDetailsToAudio < ActiveRecord::Migration
  def change
    add_column :audios, :singer, :string
    add_column :audios, :size, :decimal
  end
end
