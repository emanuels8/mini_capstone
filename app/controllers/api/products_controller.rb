class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    if params[:search]
      @products = @products.where("name ILIKE ?", "%#{params[:search]}%")
    end

    if params[:discount] == "true"
      @products = @products.where("price < ?", 150)
    end

    if params[:sort] == "price" && params[:sort_order] == "asc"
      @products = @products.order(:price => :asc)
    end
    if params[:sort] == "price" && params[:sort_order] == "desc"
      @products = @products.order(:price => :desc)
    end
    if params[:sort] != "price"
      @products = @products.order(:id => :asc)
    end
    render "index.json.jb"
  end

  def show
    @product = Product.find_by(id: params["id"])
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      {
        name: params["name"],
        price: params["price"],
        image: params["image"],
        # supplier_id: params["supplier_id"],
        # image_url: params["image_url"],
        description: params["description"],

      }
    )

    if @product.save == true
      # Image.create(product_id: @product.id, url: params[:image_url])
      render "show.json.jb"
    else
      render json: { error: "The Product did not save" }, status: 422
    end
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.name = params["name"] || @product.name
    @product.price = params["price"] || @product.price
    # @product.image_url = params["image_url"] || @product.image_url
    @product.description = params["description"] || @product.description
    if @product.save == true
      render "show.json.jb"
    else
      render json: { error: "The Product did not update" }, status: 304
    end
  end

  def destroy
    @product = Product.find_by(id: params["id"])
    @product.destroy
    render json: { message: "DELETED" }
  end
end
