require "httparty"
require "http_logger"

module Rijksmuseum
  include HTTParty
  base_uri "www.rijksmuseum.nl/api/nl"

  
  def self.search(query)
    get("/collection?q=#{query}&key=05vWA47V&format=json").parsed_response['artObjects']
    #key in ENV!
  end

  def self.top_pieces
    get("/collection?key=05vWA47V&toppieces=true&ps=40&format=json").parsed_response['artObjects']
  end
end