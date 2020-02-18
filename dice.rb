require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do
  "<h1>Hello, world!</h1>"

dice_A = rand(1..6)
dice_B = rand(1..6)
total = dice_A + dice_B
puts "#{dice_A}"
puts "#{dice_B}"
puts "The total is #{total}"

if total == 11 || total == 7
    puts "You Win!"
elsif total == 2 || total == 3 || total == 12
    puts "YOU LOSE!"
else 
    puts "The point is #{total}"
end


end

