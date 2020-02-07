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







url = 'https://makeup-api.herokuapp.com/api/v1/products.json'
response = RestClient.get(https://makeup-api.herokuapp.com/api/v1/products.json)
JSON.parse(response)