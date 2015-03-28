require 'sinatra'
require 'json'

get '/status' do
	"Up and Running !"	
end

get "/journeys" do
	
	time = Time.now.to_i

	if time % 2 == 0 
		journeys = []
		journey = {  :origin => "LON" , :destination => "MAN" , :"outward_travel" => "01/04/2015" , "return_travel" => "04/04/2015"}
		journeys.push journey
		journeys.to_json
	else
		status 401
	end

	
end

get "/journeys/error" do
	status 401
end