class Api::ProductsController < ApplicationController
  # if current_user
  #   @products = Product.all
  # else
  #   @products = []
  # end
  # p "HERE IS THE CURRENT USER"
  # p current_user
  # p "THERE WAS TEH CURRENT USER"
  # render "index.json.jb"
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      stock: params[:stock],
      description: params[:description],
      image_url: params[:image_url],
      is_dicountined: params[:is_discountined],
    )
    @product.save
    render "show.json.jb"
  end

  def show
    @product = product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name

    @product.save
    render "show.json.jb"
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "Product successfully destroyed." }
  end
end
