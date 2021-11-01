require 'sinatra'

# get "/" do
#   "hi 你好"
# end

get "/about" do
  "Success!"
end

# get "/aaaa/:xyz" do
#   "hi #{params['xyz']}"
# end

get "/about" do
  erb :about
end