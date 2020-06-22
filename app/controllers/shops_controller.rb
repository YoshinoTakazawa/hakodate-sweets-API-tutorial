class ShopsController < ApplicationController
  before_action :set_shop, only: %i[show update destroy]
  def index
    @shops = Shop.all
    render json: @shops
  end

  def show
    render json: @shop
  end

  def create
    @shop = Shop.new(shop_params)

    if @shop.save
      render json: @shop, status: :created, location: @shop
    else
      render json: @shop.errors, status: :unprocessable_entity
    end
  end

  def update
    if @shop.update(shop_params)
      render json: @shop
    else
      render json: @shop.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @shop.destroy
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop).permit(:name, :description, :area, :postcode, :address, :openingHoursSpecification, :closed, :parking, :eatin, :email, :url, :latitude, :longitude, :imagePath, :telephone)
  end
end
