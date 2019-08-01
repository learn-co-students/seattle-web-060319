# To use Rack, provide an "app":
# an object that responds to the call method,
# taking the environment hash as a parameter,
# and returning an Array with three elements:
#
# The HTTP response code
# A Hash of headers
# The response body, which must respond to each

require 'rack'
require 'pry'
require 'byebug'

class App
  def call(environment_hash)
    # http_code = 200
    # headers = {}
    request = Rack::Request.new(environment_hash)
    response = Rack::Response.new
    campuses = ["/seattle", "/new_york", "/houston"]
    if request.path  == "/"#.match(/\//)
      # body = ["Welcome to FlatIron School."]
      response.write "Welcome to FlatIron School."
      # binding.pry
      byebug
    elsif campuses.include?(request.path)
      # body = ["Welcome to FlatIron School Seattle"]
      response.write "Welcome to FlatIron School Campuses #{request.path.gsub("_", " ").gsub("/", "").capitalize}"
    # elsif request.path == "/new_york"
    #   # body = ["Welcome to FlatIron School New York"]
    #   response.write "Welcome to FlatIron School New York"
    # elsif request.path == "/houston"
    #   # body = ["Welcome to FlatIron School Houston"]
    #   response.write "Welcome to FlatIron School Houston"
    else
      # body = ["This is campus does not exist yet"]
      response.write "This is campus does not exist yet"
    end
    response.finish
    # return [http_code, headers, body]
  end
end

run App.new
