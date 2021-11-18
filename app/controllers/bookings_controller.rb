class BookingsController < ApplicationController
  def create
    @booking = Booking.new(params_booking)
    @booking.start_date = DateTime.strptime(params[:start], '%m/%d/%Y')
    @booking.client_id = current_user.id
    @booking.final_date = DateTime.strptime(params[:end], '%m/%d/%Y')
    @booking.humorist_id = params[:humorist_id]
    @booking.price = @booking.humorist.price_per_hour * ((@booking.final_date - @booking.start_date) / 60 / 60 / 24)
    authorize @booking
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

  def delete
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to '/users/profile', notice: "Your booking has been deleted"
  end

  def index
    @bookings = policy_scope(Booking)
  end

  private

  def params_booking
    params.require(:booking).permit(:content, :price, :start_date, :final_date)
  end
end
