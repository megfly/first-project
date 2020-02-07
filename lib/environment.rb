require_relative './makeup_search/version'
require_relative './cli'
require_relative './api'
require_relative './makeup'

require 'rest-client'
require 'json'
require 'pry'

module MakeupSearch
    class Error < StandardError; end
    # Your code goes here...
end

puts "environment file"







url = 'https://api.spotify.com/v1/search?type=artist&q=tycho'
response = RestClient.get(url)
JSON.parse(response)