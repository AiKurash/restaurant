class CertCategoriesController < ApplicationController

  def index
    @categories = CertCategory.order(:title)
  end
end 
