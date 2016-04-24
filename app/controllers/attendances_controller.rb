class AttendancesController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def index
    @wedding = Wedding.find(params[:wedding_id])
    @attendances = Attendance.where(wedding_id: params[:wedding_id]).order(status: :asc, email: :asc)
  end

  def create
  end

  def destroy
    @attendance = Attendance.find(params[:id])
    @attendance.destroy
    flash[:success] = "Invitation retracted"
    redirect_to wedding_attendances_path(params[:wedding_id])
  end

  def update
  end
end
