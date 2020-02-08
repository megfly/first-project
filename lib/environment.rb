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