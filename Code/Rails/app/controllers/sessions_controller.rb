class SessionsController < ApplicationController
  before_action :set_session, only: [:show, :edit, :update, :destroy]

  # GET /sessions
  def index
    #@sessions = Session.all
  end

  # GET /sessions/1
  def show
  end

  # GET /sessions/new
  def new
    #@session = Session.new
  end

  # GET /sessions/1/edit
  def edit
  end

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

  # PATCH/PUT /sessions/1
  def update
    #if @session.update(session_params)
    #  redirect_to @session, notice: 'Session was successfully updated.'
    #else
    #  render action: 'edit'
    #end
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
