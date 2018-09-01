class CallbackMailer < ApplicationMailer
  default from: 'bestinsulation2018@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def callback_request(callback)
    @callback = callback
    mail( to: "arifalim9@gmail.com", subject: "Client Callback Request", cc: "bestinsulation2018@gmail.com" )
  end
end
