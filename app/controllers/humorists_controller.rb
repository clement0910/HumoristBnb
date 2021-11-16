class HumoristsController < ApplicationController
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
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @humorist = Humorist.find(params[:id])
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

  def index
    @humorists = policy_scope(Humorist)
  end

  private

  def params_humorist
    params.require(:humorist).permit(:name, :size, :weight, :gender, :age, :humor_type, :public_target, 
                                     :price_per_hour, :photo)
  end
end
