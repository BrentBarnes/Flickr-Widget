class StaticPagesController < ApplicationController
  require 'flickr'

  def index
    return unless params[:flickr_id]

    flickr = Flickr.new
    @pictures = flickr.photos.search user_id: params[:flickr_id]
  end
end
