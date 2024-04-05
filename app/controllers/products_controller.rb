class ProductsController < ApplicationController
  def findAll
    render json: Product.all
  end

  def findOne
    render json: Product.find(params[:id])
  end

  def create
    permitted_params = permit_model_params(Product, params)
    product = Product.create(permitted_params)
    render json: product if validate_record(product)
  end

  def update
    product = Product.find params[:id]
    permitted_params = permit_model_params(Product, params)
    product.update permitted_params
    render json: product if validate_record(product)
  end

  def delete
    product = Product.find params[:id]
    render json: product.destroy
  end
end
