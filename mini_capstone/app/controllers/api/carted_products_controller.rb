class Api::CartedProductsController < ApplicationController
  def create
      @carted_product = Product.new(
        name: params[:name],
        price: params[:price],
        stock: params[:stock],
        description: params[:description],
        image_url: params[:image_url],
        is_discounted: params[:is_discounted],
        is_dicountinued: params[:is_dicountinued],
      )
      @product.save
      render "show.json.jb"
  end
end
