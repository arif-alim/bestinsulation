class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for contacting Best Insulation, we will get back to you shortly!'
    else
      flash.now[:error] = 'Sorry, there was an error and cannot send message'
      render :new
    end
  end
  
end
