class CategoriesController < ApplicationController
  def index
    @categories = Category.all

    render json: @categories
  end

  def show
    @category = Category.find(params['id'])

    render json: @category
  end

  def random
    category_count = Category.all.count
    id = rand(category_count)
    @category = Category.find(id)

    render json: @category
  end
end
