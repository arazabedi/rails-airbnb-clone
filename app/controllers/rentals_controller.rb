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
    @rental.user = current_user
    if @rental.save
      redirect_to rental_path(@rental)
    else
      render :new
    end
  end

  def destroy
    if @rental.destroy
      redirect_to rentals_path(@rental)
    else
      render :index
    end
  end
end

private
