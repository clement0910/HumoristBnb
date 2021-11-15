class HumoristsController < ApplicationController
  def new
    @humorist = Humorist.new
  end

  def create
    @humorist = Humorist.new(params_humorist)
    if @humorist.save
      redirect_to list_path(@humorist)
    else
      render :new
    end
  end

  def show
    @humorist = Humorist.find(params[:id])
  end

  def destroy
    @humorist = Humorist.find(params[:id])
    @humorist.destroy
    redirect_to '/humorist/new', :notice => "Your humorist's show has been deleted"
  end

  def edit
  end

  def index
    @humorists = Humorist.all
  end

  private

  def params_humorist
    params.require(:humorist).permit(:name, :size, :weight, :gender, :age, :humor_type, :public_target, :price_per_hour)
  end
end
