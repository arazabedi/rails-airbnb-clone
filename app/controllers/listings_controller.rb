class ListingsController < ApplicationController
  def index
    if params[:query].present?
    @listings = Listing.where("breed ILIKE ?", "%#{params[:query]}%")
  else
    @listings = Listing.all
  end
  end


  def show
    @listing = Listing.find(params[:id])
    @rental = Rental.new
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
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
  @listing = Listing.find(params[:id])
end

def listing_params
  params[:listing].permit(:name, :breed, :price, :description, :photo)
end
