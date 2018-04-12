require "sinatra"

get '/' do
	redirect '/get_pizza'
end

get '/get_pizza' do
    erb :pizza
end

post '/pizza_choice' do
	pizza = params[:pizza]
	redirect '/crust?pizza=' + pizza
end

get '/crust' do
	pizza = params[:pizza]
	erb :crust, :locals => {:pizza => pizza}
end
	
post '/crust_choice' do
	pizza = params[:pizza]
	crust = params[:crust]
	redirect '/side?pizza=' + pizza + '&crust=' + crust
end
	
get '/side' do
	pizza = params[:pizza]
	crust = params[:crust]
	erb :side, :locals => {:pizza => pizza, :crust => crust}
end
	
post '/side_choice' do
	pizza = params[:pizza]
	crust = params[:crust]	
	side  = params[:side]
	redirect '/drink?pizza=' + pizza + '&crust=' + crust + '&side=' + side
end
	
get '/drink' do
	pizza = params[:pizza]
	crust = params[:crust]
	side  = params[:side]
	erb :drink, :locals => {:pizza => pizza, :crust => crust, :side => side}
end
	
post '/drink_choice' do
	pizza = params[:pizza]
	crust = params[:crust]	
	side  = params[:side]
	drink = params[:drink]
	redirect '/final_order?pizza=' + pizza + '&crust=' + crust + '&side=' + side + '&drink=' + drink
end

get '/final_order' do
	pizza = params[:pizza]
	crust = params[:crust]
	side  = params[:side]
	drink = params[:drink]
	erb :final_order, :locals => {:pizza => pizza, :crust => crust, :side => side, :drink => drink}
end






