require "httparty"
require "http_logger"

module Rijksmuseum
  include HTTParty
  base_uri "www.rijksmuseum.nl/api/nl"

  
  def self.search(query)
    get("/collection?q=#{query}&key=#{ENV['rijks_api_key']}&format=json").parsed_response['artObjects']
    #key in ENV!
  end

  def self.top_pieces
    get("/collection?key=#{ENV['rijks_api_key']}&toppieces=true&ps=20&format=json").parsed_response['artObjects']
  end

  def self.find_artist(name)
    get("/collection?q=#{name}&key=#{ENV['rijks_api_key']}&format=json").parsed_response['artObjects']
  end
end