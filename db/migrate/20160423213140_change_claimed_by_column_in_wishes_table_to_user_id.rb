class ChangeClaimedByColumnInWishesTableToUserId < ActiveRecord::Migration
  def change
    rename_column :wishes, :claimed_by, :user_id
  end
end
