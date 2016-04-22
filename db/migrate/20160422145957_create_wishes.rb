class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :name
      t.string :image
      t.string :details
      t.integer :claimed_by
      t.integer :wedding_id

      t.timestamps null: false
    end
  end
end
