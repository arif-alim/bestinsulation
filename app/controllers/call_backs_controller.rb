class CallBacksController < ApplicationController
  def create
    @callback = CallBack.new(params[:callback])
    if CallbackMailer.callback_request(@callback).deliver
      flash[:success] = 'Thank you for your message. We will contact you soon!'
      # redirect_to home_index_path
    else
      flash[:error] = 'Cannot send message.'
      # redirect_to home_index_path
    end
  end
end
