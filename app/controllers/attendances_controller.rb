class AttendancesController < ApplicationController
  before_action :authenticate_user!

  def index
    @wedding = Wedding.find(params[:wedding_id])
    check_admin!
    @attendances = Attendance.where(wedding_id: params[:wedding_id]).order(status: :asc, email: :asc)
    session[:current_wedding] = params[:wedding_id]
  end
  
  def destroy
    @attendance = Attendance.find(params[:id])
    check_admin!
    @attendance.destroy
    flash[:success] = "Invitation retracted"
    redirect_to wedding_attendances_path(params[:wedding_id])
  end

  def confirm
    @wedding = Wedding.find(params[:wedding_id])
    check_admin!
    @attendance = Attendance.find(params[:id])
    @attendance.update(status: "confirmed")
    flash[:success] = "Attendance confirmed!"
    redirect_to wedding_path(@wedding.id)
  end

  def admin_status?
    !(@wedding.attendances.find_by(user_id: current_user.id).role == "guest")
  end

  def check_admin!
    if admin_status?
      true
    else
      flash[:error] = "You don't have priviledges to manage this wedding"
      redirect_to(:back)
    end
  end
end
