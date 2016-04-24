module ApplicationHelper

  def admin_status?
    !(@wedding.attendances.find_by(user_id: current_user.id).role == "guest")
  end
end
