class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
    @users = User.all
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  def create

    # Incompleate Fields Check
    params.each do |param|
      if param == nil || param == ""
        flash[:error] = "Please fill in all fields"
        redirect_to new_user_path
        return
      end
    end

    # Duplicate Email Check
    if User.find_by email: params[:email] != nil
      flash[:error] = "This email address is already in use"
      redirect_to new_users_path
      return
    end

    # Differnt Password Check
    if params[:password_one] != params[:password_two]
      flash[:error] = "Passwords did not match"
      redirect_to new_user_path
      return
    end

    user = User.from_form(params)
    session[:user] = user.id
    flash[:notice] = "Welcome to Chelp #{params[:first_name]}"
    redirect_to charities_path

  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

end
