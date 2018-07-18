class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def msg
  	render html: "Hello Abdikarim sharif Mohamed"
  end
end
