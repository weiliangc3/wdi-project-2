class CreateWeddings < ActiveRecord::Migration
  def change
    create_table :weddings do |t|
      t.string :name
      t.string :hero_image
      t.string :description

      t.timestamps null: false
    end
  end
end
