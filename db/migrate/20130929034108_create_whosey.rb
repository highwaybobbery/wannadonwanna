class CreateWhosey < ActiveRecord::Migration
  def change
    create_table :whoseys do |t|
      t.string :name, null: false
      t.integer :points, null: false, default: 0
    end
  end
end
