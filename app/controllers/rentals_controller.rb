class RentalsController < ApplicationController
  def index
    @rental = Rental.all
  end

  def show
    @rental = Rental.find(params[:id])
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @listing = Listing.find(params[:listing_id])
    @rental.user = current_user
    @rental.listing = @listing
    if @rental.save!
      # redirect_to listing_path(@listing)
      redirect_to confirmation_path(@rental)
    else
      render :new, status: :unprocessed_entity
    end
  end

  def confirmation_page
    @rental = Rental.find(params[:id])
  end

  def destroy
    if @rental.destroy
      redirect_to rentals_path(@rental)
    else
      render :index
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end

end
