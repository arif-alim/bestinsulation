class HomeController < ApplicationController

  def index
  end

  def reviews
  end

  def gallery
  end

  def contact_us
    @contact = Contact.new
  end

end
