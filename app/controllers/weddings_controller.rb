class WeddingsController < ApplicationController
  def index
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
