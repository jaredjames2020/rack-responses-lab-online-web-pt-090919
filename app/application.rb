require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.new 
    return [ 200, {'Content-Type' => 'text/html'}, time_of_day_response ]
  end
 
  def time_of_day_response
    binding.pry
    (Time.strftime("%k").to_i) < 12 ? "Good Morning" : "Good Afternoon"
  end

end