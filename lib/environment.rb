require_relative './makeup_search/version'
require_relative './api'
require_relative './cli'
require_relative './makeup'

require 'json'
require 'pry'
require 'httparty'

module MakeupSearch
    class Error < StandardError; end
    # Your code goes here...
end