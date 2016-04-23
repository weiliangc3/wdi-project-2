class WishesController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
    @wish = Wish.find(params[:id])
    @wish.destroy
    flash[:success] = "Wish removed!"
    redirect_to wedding_path(params[:wedding_id])
  end

  def claim
    wish = Wish.find(params[:id])
    wish.user_id = current_user.id
    if wish.save!
      flash[:success] = "Wish claimed!"
      redirect_to wedding_path(params[:wedding_id])
    else
      flash[:info] = "Claim error, wish not claimed :("
      redirect_to wedding_path(params[:wedding_id])
    end
  end

  def unclaim
    wish = Wish.find(params[:id])
    wish.user_id = nil
    if wish.save!
      flash[:success] = "Unclaim successful"
      redirect_to wedding_path(params[:wedding_id])
    else
      flash[:info] = "Unclaim was not successful"
      redirect_to wedding_path(params[:wedding_id])
    end
  end

  private
    def wish_params
      params.require(:wish).permit(:name, :image, :details, :user_id)
    end
end
