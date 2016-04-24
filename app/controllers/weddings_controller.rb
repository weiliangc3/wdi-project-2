class WeddingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @my_attendances = current_user.attendances.where(role: "couple", status: "confirmed")
    @admin_attendances = current_user.attendances.where(role: "admin", status: "confirmed")
    @guest_attendances = current_user.attendances.where(role: "guest", status: "confirmed")
    @unconfirmed_attendances = current_user.attendances.where(status: "unconfirmed")

    @weddings = Wedding.all
  end

  def show
    @wedding = Wedding.find(params[:id])

    @your_claimed_wishes = Wish.where(wedding_id: params[:id], user_id: current_user.id)
    @unclaimed_wishes = Wish.where(wedding_id: params[:id], user_id: nil)
    @claimed_wishes = Wish.where(wedding_id: params[:id]).where.not(user_id: nil, user_id: current_user.id)
  end

  def new
    @wedding = Wedding.new
  end

  def create
    wedding = Wedding.new(wedding_params)
    Attendance.create!(role: "admin", user_id: current_user.id, status: "confirmed", email: current_user.email, wedding_id: wedding.id)
    if wedding.save
      flash[:success] = "Wedding created!"
      redirect_to wedding_path(wedding)
    else
      flash[:error]   = "Wedding creation failed"
      redirect_to new_wedding_path
    end
  end

  def edit
    @wedding = Wedding.find(params[:id])
  end

  def destroy
    wedding = Wedding.find(params[:id])
    wedding.destroy
    flash[:success] = "Wedding deleted"
    redirect_to weddings_path
  end

  def update
    wedding = Wedding.find(params[:id])
    wedding.update(wedding_params)
    if wedding.update(wedding_params)
      flash[:success] = "Wedding details updated!"
      redirect_to wedding_path(wedding)
    else
      flash[:error]   = "Wedding edit failed"
      redirect_to edit_wedding_path(wedding)
    end
  end

  def wedding_params
    params.require(:wedding).permit(:name, :wedding_image, :description)
  end

end
