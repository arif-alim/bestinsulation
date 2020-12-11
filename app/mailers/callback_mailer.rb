class CallbackMailer < ApplicationMailer
  default from: 'bestinsulation2018@gmail.com'
  TO = ["mo.shahri@yahoo.ca", "info@bottegaconstruction.com"]

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def callback_request(callback)
    @callback = callback
    mail( to: TO, subject: "Callback Request from #{@callback.name.camelcase} #{Time.current.strftime('%b %d, %Y %H:%M %p')}")
  end
end
