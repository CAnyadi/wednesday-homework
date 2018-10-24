class PostController < Sinatra::Base

set :root, File.join(File.dirname(__FILE__), "..")

set :view, Proc.new { File.join(root, "views") }

# for the homepage
get "/" do
end

get "/new" do
  "<h1>Welcome to a new page</h1>"
end

get "/:page" do

  id = params[:page]

case something_new

when id==Questions
  "<h2>Welcom to the questions page</h2>"
