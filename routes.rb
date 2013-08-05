require 'sinatra'

get '/' do
  "Triggered via GET"
end

post '/' do
  "Triggered via POST"
end

put '/' do
  "Triggered via PUT"
end

delete '/' do
  "Triggered via DELETE"
end

patch '/' do
  "Triggered via PATCH"
end

options '/' do
  "Triggered via OPTIONS"
end

['/one/?', '/two/?', '/three/?']. each do |route|
  get route do
    "Triggered #{route} via GET"
  end

  post route do
    "Triggered #{route} via POST"
  end
end

get  '/:name' do
  "Hello, #{params[:name]}!"
end
