class ContactMailer < ApplicationMailer
  default from: 'bestinsulation2018@gmail.com'
  TO = ["mo.shahri@yahoo.ca", "r.bestinsulation@gmail.com"]

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def contact_us(contact)
    @contact = contact
    mail( to: TO, subject: "Contact Us Request by #{@contact.name.camelcase} #{Time.current.strftime('%b %d, %Y %H:%M %p')}")
  end
end
