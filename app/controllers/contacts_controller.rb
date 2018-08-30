class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if ContactMailer.contact_us(@contact).deliver
      flash[:success] = 'Thank you for your message. We will contact you soon!'
      redirect_to contact_us_home_index_path
    else
      flash[:error] = 'Cannot send message.'
      redirect_to contact_us_home_index_path
    end
  end
end
