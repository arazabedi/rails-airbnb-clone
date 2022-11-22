class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    authorize @listing
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end

  def destroy
    if @listing.destroy
      redirect_to listings_path(@listing)
    else
      render :index
    end
  end
end

private

def set_listing
  @boat = Listing.find(params[:id])
end

def listing_params
  params[:listing].permit(:title, :price, :description, :capacity, :is_available, :has_captain, :license_plate, :photo, :address)
end
end
