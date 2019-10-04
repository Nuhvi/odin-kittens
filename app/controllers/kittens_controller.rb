# frozen_string_literal: true

class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
    respond_to do |format|
      format.html
      format.json { render json: @kittens }
    end
  end

  def show
    @kitten = set_kitten
    respond_to do |format|
      format.html
      format.json { render json: @kitten }
    end
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      flash[:notice] = 'Kitten was successfully created.'
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
    @kitten = set_kitten
  end

  def update
    if (@kitten = set_kitten).update(kitten_params)
      flash[:notice] = 'Kitten was successfully updated.'
      redirect_to @kitten
    else
      render :edit
    end
  end

  def destroy
    (@kitten = set_kitten).destroy
    flash[:notice] = 'Kitten was successfully deleted.'
    redirect_to root_url
  end

  private

  def set_kitten
    Kitten.find(params[:id])
  end

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
