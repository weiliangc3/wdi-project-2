class AddWeddingImageToWedding < ActiveRecord::Migration
  def change
    add_column :weddings, :image, :string
  end
end
