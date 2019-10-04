# frozen_string_literal: true

class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def show
    @kitten = set_kitten
  end

  def new
    @kitten = Kitten.new
  end

  def create
    Kitten.create(kitten_params)
  end

  def edit
    @kitten = set_kitten
  end

  def update
    @kitten = set_kitten
    @kitten.update(kitten_params)
  end

  def destroy
    if @kitten = set_kitten
      @kitten.destroy
      redirect_to root_url
    end
  end

  private

  def set_kitten
    Kitten.find(params[:id])
  end

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
