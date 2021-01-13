class Api::ProductsController < ApplicationController
  def sell_rope
    @all_products = Product.all
    render "all_products.json.jb"
  end

  def first_rope
    @first_product = Product.first

    render "first.json.jb"
  end

  def second_rope
    @second_product = Product.second
    render "second.json.jb"
  end

  def third_rope
    @third_product = Product.third
    render "third.json.jb"
  end
end
