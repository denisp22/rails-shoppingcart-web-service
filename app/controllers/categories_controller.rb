class CategoriesController < ApplicationController

  def create
    Category.create(
      name: params[:name]
    )
  end

end