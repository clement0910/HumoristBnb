class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home


  def home
    @humorists = policy_scope(Humorist)
    @humorists = Humorist.all
    if params[:query].present?
      sql_query = "name ILIKE :query"
      @humorists = @humorists.where(sql_query, query: "%#{params[:query]}%")
    end
    if params[:humor_type].present?
      @humorists = @humorists.where(humor_type: params[:humor_type])
    end
    if params[:humor_type].present?
      @humorists = @humorists.where(public_target: params[:public_target])
    end
    @current_path = 'home'
  end


end
