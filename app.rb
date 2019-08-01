require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @name = params[:name] 
    "#{@name.reverse}"
  end
  
  get '/square/:number' do
    @square = params[:number].to_i*params[:number].to_i
    "#{@square}"
  end
  
  get '/say/:number/:phrase' do
    str = ""
    @num = params[:number].to_i
    @blah = params[:phrase]
    i = 0
    until i > @num 
      str += "#{@blah}"
      i+=1 
    end
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
    

end