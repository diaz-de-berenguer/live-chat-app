class HomeController < ApplicationController
  def index
  	Message.create! content: "From Home controller!", username: [ "Bob", "Mick", "Jon", "Diego" ].sample
  	render html: "<h4>Rails Backend!</h4>".html_safe
  end
end
