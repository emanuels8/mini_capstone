class Api::ProductsController < ApplicationController
  def sell_rope
    @all_products = Product.all
    render "all_products.json.jb"
  end
end
