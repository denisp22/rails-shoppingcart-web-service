class ProductsController < ApplicationController

  def index
    offset = params[:offset]
    limit = params[:limit]
    order = params[:order]

    case order
    when order == "desc"
      render json: Product.offset(offset).limit(limit).order(price: :desc)
    when order == "asc"
      render json: Product.offset(offset).limit(limit).order(price: :asc)
    else
      render json: Product.offset(offset).limit(limit).order(price: :desc)
    end
  end

  def show
    @product = Product.find(params[:id])
    render json: @product
  end

end