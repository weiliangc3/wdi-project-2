class CreateAttendingJoinTable < ActiveRecord::Migration
  def change
    create_table(:attending) do |t|
      t.integer :user_id
      t.integer :wedding_id
      t.string  :role
      t.string  :status
      t.string  :email
    end
  end
end
