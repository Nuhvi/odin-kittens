# frozen_string_literal: true

class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def show
    @kitten = set_kitten
  end

  def new; end

  def create; end

  def edit
    @kitten = set_kitten
  end

  def update; end

  def destroy
    @kitten = set_kitten
  end

  private

  def set_kitten
    Kitten.find(params[:id])
  end
end
