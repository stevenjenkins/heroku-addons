require 'sinatra'
require 'json'

use Rack::Auth::Basic do |username, password|
  username == 'heroku' && password = 'b1EWrHYXE1R5J71D'
end

post '/heroku/resources' do
  { "id" => "42", "config" => {'STEVEN_O_MATIC_ADDITIONAL_VALUE' => 'br549'}}.to_json
end

delete '/heroku/resources/:id' do
  "ok"
end
