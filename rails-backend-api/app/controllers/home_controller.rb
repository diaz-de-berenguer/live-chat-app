class HomeController < ApplicationController
  def index
  	render html: "<h4>Rails Backend!</h4>".html_safe
  end
end
