require 'sinatra'

get('/') do
    "Hello, web!"
end

get('/movies') do
    "List of Movies!"
end