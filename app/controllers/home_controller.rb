class HomeController < ApplicationController
  # def index
  #   page = params[:page]
  #   render page
  # end
  def contact_us
    @contact = Contact.new
  end
end
