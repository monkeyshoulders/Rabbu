class ListingsController < ApplicationController
  before_action :find_listing, only: [:show, :edit, :update, :destroy]

  def index
    if user_signed_in?
      @listings = Listing.where(:user_id => current_user.id).order("created_at DESC")
    end
  end

  def show
  end

  def new
    @listing = Listing.new
  end

  def create

    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @listing.update(listing_params)
      redirect_to listing_path(@listing)
    else
      render 'edit'
    end
  end

  def destroy
    @listing.destroy
    redirect_to root_path
  end

  private

  def listing_params
    params.require(:listing).permit(:title)
  end

  def find_listing
    @listing = Listing.find(params[:id])
  end

end
