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
    wish = Wish.find(params[:id])
    
  end

  def claim
    wish = Wish.find(params[:id])
    wish.user_id = current_user.id
    wish.save!
    redirect_to wedding_path(params[:wedding_id])
  end

  def unclaim
    wish = Wish.find(params[:id])
    wish.user_id = nil
    wish.save!
    redirect_to wedding_path(params[:wedding_id])
  end

  private
    def wish_params
      params.require(:wish).permit(:name, :image, :details, :user_id)
    end
end
