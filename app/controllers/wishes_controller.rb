class WishesController < ApplicationController
  before_action :authenticate_user!

  def new
    @wedding = Wedding.find(params[:wedding_id])
    check_admin!
    @wish = Wish.new
    @wish_path = new_wedding_wish_path(params[:wedding_id])
  end

  def create
    wish = Wish.new(wish_params)
    if wish.save
      flash[:success] = "Wish created!"
      redirect_to wedding_path(wish.wedding_id)
    else
      flash[:error]   = "Wish creation failed"
      redirect_to :back
    end
  end

  def edit
    @wedding = Wedding.find(params[:wedding_id])
    check_admin!
    @wish = Wish.find(params[:id])
    @wish_path = wedding_wish_path(params[:wedding_id], params[:id])
  end

  def update
    wish = Wish.find(params[:id])
    if wish.update(wish_params)
      flash[:success] = "Wish details updated!"
      redirect_to :back
    else
      flash[:error]   = "Wish edit failed"
      redirect_to :back
    end
  end

  def destroy
    @wedding = Wedding.find(params[:wedding_id])
    check_admin!
    @wish = Wish.find(params[:id])
    @wish.destroy
    flash[:success] = "Wish removed!"
    redirect_to wedding_path(params[:wedding_id])
  end

  def claim
    wish = Wish.find(params[:id])
    if wish.update(user_id: current_user.id)
      flash[:success] = "Wish claimed!"
      redirect_to wedding_path(params[:wedding_id])
    else
      flash[:info] = "Claim error, wish not claimed :("
      redirect_to wedding_path(params[:wedding_id])
    end
  end

  def unclaim
    wish = Wish.find(params[:id])
    if wish.update(user_id: nil)
      flash[:success] = "Unclaim successful"
      redirect_to wedding_path(params[:wedding_id])
    else
      flash[:info] = "Unclaim was not successful"
      redirect_to wedding_path(params[:wedding_id])
    end
  end

  private
    def wish_params
      params.require(:wish).permit(:name, :image, :details, :user_id, :wedding_id)
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
