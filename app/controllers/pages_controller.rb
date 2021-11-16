class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home


  def home
    @humorists = policy_scope(Humorist).all
  end
end
