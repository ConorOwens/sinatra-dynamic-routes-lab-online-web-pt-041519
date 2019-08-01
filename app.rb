require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name'
    @name = params[:name] 
    "#{@name.reverse}"
  end
  
  get '/square/:number'
    @square = params[:number]*params[:number]
    "#{@square}"
  end
  
  get '/say/:number/:phrase'
    @num = params[:number]
    @blah = params[:phrase]
    i = 0 
    while i < @num 
      "#{@blah}"
      i+=1 
    end
  end
  
  get ''
    

end