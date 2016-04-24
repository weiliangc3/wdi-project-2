class AttendancesController < ApplicationController
  before_action :authenticate_user!

  def index
    @wedding = Wedding.find(params[:wedding_id])
    @attendances = Attendance.where(wedding_id: params[:wedding_id]).order(status: :asc, email: :asc)
    session[:current_wedding] = params[:wedding_id]
  end
  
  def destroy
    @attendance = Attendance.find(params[:id])
    @attendance.destroy
    flash[:success] = "Invitation retracted"
    redirect_to wedding_attendances_path(params[:wedding_id])
  end

  def confirm
    @wedding = Wedding.find(params[:wedding_id])
    @attendance = Attendance.find(params[:id])
    @attendance.update(status: "confirmed")
    flash[:success] = "Attendance confirmed!"
    redirect_to wedding_path(@wedding.id)
  end
end
