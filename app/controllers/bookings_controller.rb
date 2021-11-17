class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @user = current_user
    authorize @booking
  end

  def create
    @booking = Booking.new(params_booking)
    @booking.client_id = current_user.id
    authorize @booking
    if @bookiing.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to '/users/profile', notice: "Your booking has been deleted"
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(params_booking)
    redirect_to '/users/profile', notice: "Your booking has been updated"
  end

  def index
    @bookings = policy_scope(Booking)
  end

  private

  def params_humorist
    params.require(:booking).permit(:content, :price, :start_date, :final_date)
  end
end
