require 'Rijksmuseum'

class RijksResourcesController < ApplicationController
  def index
    # @art_objects_search = Rijksmuseum.default
    @art_objects_search = []
    @art_objects_search = Rijksmuseum.search(params[:search]) if params[:search].present?
    @art_objects_search = Rijksmuseum.top_pieces if params[:top_pieces].present?
    # @art_resources = Rijksmuseum.top_pieces if params[:top_pieces].present?
  end
end
