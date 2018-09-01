class CallBacksController < ApplicationController
  def create
    @callback = CallBack.new(params[:callback])
    if CallbackMailer.callback_request(@callback).deliver
      flash[:success] = "Thank you, we'll be calling you shortly."
    else
      flash[:error] = 'Please refresh your page and try again.'
    end
  end
end
