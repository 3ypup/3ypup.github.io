require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/about' do
	erb :about
end

get '/visit' do

		
	erb :visit

end

get "/pict" do
	erb :pict
	end


post "/visittime"  do 

		@username = params[:username]
		@phone = params[:phone]
		@datetime = params[:datetime]



		@title = "Dear #{@username}! welcome"

		@message = "We are waiting for you at #{@datetime}. If there are changes we`ll call you at #{@phone}"



		erb :visittime


end