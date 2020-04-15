[ 'rubygems', 'sinatra', 'haml','sass' ].each do |lib|
	require lib
end
require 'restclient'
require 'json'

get '/?' do
	haml :software
end

get '/software/?' do
	haml :software
end

get '/commercial/?' do
	haml :commercial
end

get '/projects/?' do
	haml :projects
end

get '/publications/?' do
  #@publications = JSON.parse(RestClient.get("http://entrezajax.appspot.com/esearch+esummary?db=pubmed&term=Helma+C[Auth]&apikey=cfcd208495d565ef66e7dff9f98764da"))
  #@publications = JSON.parse(RestClient.get("http://entrezajax.appspot.com/esearch+esummary?db=pubmed&retmax=100&term=Helma+C[Auth]&apikey=cfcd208495d565ef66e7dff9f98764da"))
  #@publications = JSON.parse(RestClient.get("http://entrezajax.appspot.com/esearch+esummary?db=pubmed&retmax=100&max=100&term=Helma+C[Auth]&apikey=cfcd208495d565ef66e7dff9f98764da"))
  #http://scholar.google.com/scholar?as_q=&num=10&btnG=Search+Scholar&as_epq=&as_oq=&as_eq=&as_occt=any&as_sauthors=Helma&as_publication=&as_ylo=&as_yhi=&as_allsubj=all&hl=en&lr=
	haml :publications
end

get '/presentations/?' do
  	haml :presentations
end

get '/blog/?' do
  #redirect "http://opentox.github.com"
	haml :blog
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

get '/about/?' do
	haml :about
end

get '/style.css' do
	#headers 'Content-Type' => 'text/css; charset=utf-8'
	sass :style
end

