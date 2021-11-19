class BookingsController < ApplicationController
  def create
    @humorist = Humorist.find(params[:humorist_id])
    @booking = Booking.new(params_booking)
    @booking.client = current_user
    @booking.humorist = @humorist
    authorize @booking
    if @booking.save!
      redirect_to users_bookings_path, notice: "Réservation de #{@booking.humorist.name} effectué."
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to '/users/profile' , notice: "Your booking has been deleted"
  end

  def index
    @bookings = policy_scope(Booking)
  end

  private

  def params_booking
    params.require(:booking).permit(:content, :price, :starts_at, :ends_at)
  end
end
