class RenameAttendingToAttendances < ActiveRecord::Migration
  def change
    rename_table :attending, :attendances
  end
end
