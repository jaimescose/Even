class SessionsController < ApplicationController
  def new
  end
  def create
    usuario = Usuario.find_by_email(params[:email])
      # If the user exists AND the password entered is correct.
      if usuario && usuario.authenticate(params[:password])
        # Save the user id inside the browser cookie. This is how we keep the user
        # logged in when they navigate around our website.
        session[:usuario_id] = usuario.id
        redirect_to root_url, notice: "Logged in"
      else
      # If user's login doesn't work, send them back to the login form.
        flash.now.alert = "Email or password is incorrect"
        render :new
      end
  end
  def destroy
    session[:usuario_id] = nil
    redirect_to root_url, notice: "Logged out"
  end
end
