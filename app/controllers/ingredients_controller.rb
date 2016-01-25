class IngredientsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @ingredient = Ingredient.new(params[:ingredient])
  end

  def create
    begin
      Ingredient.create!(permitted_params)

      redirect_to ingredients_path
    rescue
      render action: :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def permitted_params
    params[:ingredient].permit(
      :name,
      :calories
    )
  end
end
