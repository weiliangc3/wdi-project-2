class AddWeddingImageToWedding < ActiveRecord::Migration
  def change
    add_column :weddings, :wedding_image, :string
  end
end
