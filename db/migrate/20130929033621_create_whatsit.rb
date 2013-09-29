class CreateWhatsit < ActiveRecord::Migration
  def change
    create_table :whatsits do |t|
      t.string :description, null: false
      t.integer :beggar_id, null: false
      t.integer :fulfiler_id
    end
  end
end
