class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
    before_filter :carousel_variables
    before_filter :globals

  protect_from_forgery with: :exception

    
end

def carousel_variables
    @carousel_slides = Carousel.all.order("priority")
end

def globals
   @message = Message.new
  end
