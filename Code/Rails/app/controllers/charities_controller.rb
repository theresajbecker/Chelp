class CharitiesController < ApplicationController
  before_action :set_charity, only: [:show, :edit, :update, :destroy]

  # GET /charities
  def index
    @charities = Charity.all
  end

  # GET /charities/1
  def show
  end

  # GET /charities/new
  def new
    @charity = Charity.new
  end

  # GET /charities/1/edit
  def edit
  end

  # POST /charities
  def create
    @charity = Charity.new(charity_params)

    if @charity.save
      redirect_to @charity, notice: 'Charity was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /charities/1
  def update
    if @charity.update(charity_params)
      redirect_to @charity, notice: 'Charity was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /charities/1
  def destroy
    @charity.destroy
    redirect_to charities_url, notice: 'Charity was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charity
      @charity = Charity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def charity_params
      params[:charity]
    end
end
