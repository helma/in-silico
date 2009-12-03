[ 'rubygems', 'sinatra', 'haml','sass' ].each do |lib|
	require lib
end

get '/?' do
	haml :index
end

get '/software/?' do
	haml :software
end

get '/services/?' do
	haml :services
end

get '/projects/?' do
	haml :projects
end

get '/publications/?' do
	haml :publications
end

get '/contact/?' do
	haml :contact
end

get '/links/?' do
	haml :links
end

get '/awards/?' do
	haml :awards
end

get '/style.css' do
	headers 'Content-Type' => 'text/css; charset=utf-8'
	sass :style
end
