class V1::SessionsController < ApplicationController


  #Create is like sign-in
  def create
    user = User.where(email: params[:email]).first

    if user&.valid_password?(params[:password])
      render json: user.as_json(only: [:email, :id]), status: :created
    else
      head(:unauthorized)
    end

  end

  #Destroy is like sign-out
  def destroy

  end


end
