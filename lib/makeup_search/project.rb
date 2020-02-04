require "first/project/version"

module First
  module Project
    class Error < StandardError; end
    # Your code goes here...
  end
end

require_relative './first-project/cli'
