require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do
   @dice_A = rand(1..6)
   @dice_B = rand(1..6)
   view "dice"


end

