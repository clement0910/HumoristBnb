class HumoristsController < ApplicationController

  def index
    @humorists = policy_scope(Humorist)
    @markers = @humorists.geocoded.map do |humorist|
      {
        lat: humorist.latitude,
        lng: humorist.longitude
      }
    end
  end

  def new
    @humorist = Humorist.new
    @user = current_user
    authorize @humorist
  end

  def create
    @humorist = Humorist.new(params_humorist)
    @humorist.owner_id = current_user.id
    authorize @humorist
    if @humorist.save
      redirect_to users_profile_path
    else
      render :new
    end
  end

  def show
    @humorist = Humorist.find(params[:id])
    @booking = Booking.new
    authorize @humorist
  end

  def destroy
    @humorist = Humorist.find(params[:id])
    authorize @humorist
    @humorist.destroy
    redirect_to '/users/profile', notice: "Your humorist has been deleted"
  end

  def edit
    @humorist = Humorist.find(params[:id])
    authorize @humorist
  end

  def update
    @humorist = Humorist.find(params[:id])
    authorize @humorist
    @humorist.update(params_humorist)
    redirect_to '/users/profile', notice: "#{@humorist.name} has been updated"
  end
  
  private

  def params_humorist
    params.require(:humorist).permit(:name, :size, :weight, :address, :gender, :age, :humor_type, :public_target, :price_per_hour)
  end
end
