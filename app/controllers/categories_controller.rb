class CategoriesController < ApplicationController
  def findAll
    render json: Category.all
  end

  def findOne
    render json: Category.find(params[:id])
  end

  def create
    permitted_params = permit_model_params(Category, params)
    category = Category.create(permitted_params)
    render json: category if validate_record(category)
  end

  def update
    category = Category.find params[:id]
    permitted_params = permit_model_params(Category, params)
    category.update permitted_params
    render json: category if validate_record(category)
  end

  def delete
    category = Category.find params[:id]
    render json: category.destroy
  end
end
