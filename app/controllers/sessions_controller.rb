class SessionsController < ApplicationController

  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to '/login'
    else
      session[:username] = params[:username]
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :username
    session.delete :name
    redirect_to '/login'
  end

end
