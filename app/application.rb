require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    (Time.now.strftime("%k").to_i < 12) ? "Good Morning" :"Good Afternoon"
  
  end

end