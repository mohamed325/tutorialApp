class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def msg
  	render html: "i have changed something"
  end
end
