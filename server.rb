require 'sinatra'
require 'json'

get '/status' do
	"Up and Running !"	
end

get "/journeys" do

	time = Time.now.to_i
	puts "DEBUG ====  #{time} ====="

	if time % 2 == 0 
		journeys = []
		journey = {  :origin => "LON" , :destination => "MAN" , :"outward_travel" => "01/04/2015" , "return_travel" => "04/04/2015" , "Timestamp" => time }
		journeys.push journey
		journeys.to_json
	elsif time % 3 == 0
		status 401
	else
		url = "/login/#{time}"
		redirect url , 301
	end

end

get "/journeys/error" do
	status 401
end

get "/login/:time" do
	time = params[:time]
	"Login page in progress -> Redirected at #{time}"
end