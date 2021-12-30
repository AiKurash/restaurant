class StaticPagesController < ApplicationController
  def home
    redirect_to articles_path if logged_in?
  end

  def help
  end

  def about
  end
end
