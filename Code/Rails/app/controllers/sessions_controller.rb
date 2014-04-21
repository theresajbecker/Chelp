class SessionsController < ApplicationController
  before_action :set_session, only: [:show, :edit, :update, :destroy, :fromOAuth]

  # POST /sessions
  def create

    user = User.find_by login: session_params[:username]

    if user == nil
      redirect_to new_session_path, notice: 'Failed to find user'
    else

      if session_params[:password] == user.password
        session[:user] = user
        redirect_to charities_path
      else
        redirect_to new_session_path, notice: 'Password is wrong CHANGE THIS!'
      end

    end

  end

  # DELETE /sessions/1
  def destroy
    if session[:user] != nil
      session[:user] = nil
    end

    redirect_to charities_path
    #@session.destroy
    #redirect_to sessions_url, notice: 'Session was successfully destroyed.'
  end

  def fromOAuth
    p "======================================================================"
    p "======================================================================"

    p "Got something from Google:"
    p env["omniauth.auth"]

    p "======================================================================"
    p "======================================================================"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      #@session = Session.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def session_params
      params.require(:session).permit(:username, :password)
    end
    
end
