class PostController < Sinatra::Base

set :root, File.join(File.dirname(__FILE__), "..")

set :view, Proc.new { File.join(root, "views") }

# for the homepage
get "/" do
  "<h1>Welcome to hairandbeauty.co</h1>"

  erb :'pages/homepage'
end

get "/new" do
  "<h1>Welcome to a new page</h1>"
end


get "/:page" do
  id = params[:page]

  case id

    when "questions"
      erb :'pages/questions'
      # @title "Questions"
      # "<h2>Welcome to the questions page</h2>"

    when "bundle-deals"
      erb :'pages/bundles-deals'
      # @title "Blundle-deals"


    when "client-photos"
      erb :'pages/client-photos'

    when "contact-us"
        erb :'pages/contact-us'
      # "<h2>Any queries concerning booking call us on...</h2>"

    when "about-us"
        erb :'pages/about-us'

      else
        "oops there's something wrong"
    end

  end
end
