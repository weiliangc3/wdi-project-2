class WeddingsController < ApplicationController
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
  end

  def edit
    @wedding = Wedding.find(params[:id])
  end

  def delete
  end

  def update
  end

  def wedding_params
    params.require(:wedding).permit(:name,:wedding_image, :description)
  end

end
