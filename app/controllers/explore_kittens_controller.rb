# frozen_string_literal: true

class ExploreKittensController < ApplicationController
  def index
    @photos = Flickr.photos.search(tags: 'kittens').sample(10)
  end
end
