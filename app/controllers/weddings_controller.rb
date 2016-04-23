class WeddingsController < ApplicationController
  def index
    @my_attendances = current_user.attendances.where(role: "couple", status: "confirmed")
    @admin_attendances = current_user.attendances.where(role: "admin", status: "confirmed")
    @guest_attendances = current_user.attendances.where(role: "guest", status: "confirmed")
    @unconfirmed_attendances = current_user.attendances.where(status: "unconfirmed")

    @weddings = Wedding.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def delete
  end

  def update
  end

  def wedding_params
    params.require(:wedding).permit(:name,:wedding_image, :description)
  end

end
