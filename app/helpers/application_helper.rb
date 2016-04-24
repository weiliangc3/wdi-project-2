module ApplicationHelper

  def admin_status?
    !(@wedding.attendances.find_by(user_id: current_user.id).role == "guest")
  end

  def check_admin!
    if admin_status?
      true
    else
      flash[:error] = "You don't have priviledges to manage this wedding"
      back
    end
  end
end
