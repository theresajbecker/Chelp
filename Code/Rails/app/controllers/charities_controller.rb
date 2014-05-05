class CharitiesController < ApplicationController
  before_action :set_charity, only: [:show, :edit, :update, :destroy]

  # GET /charities
def index
    session[:sort] = params[:sort].presence || session[:sort].presence || 'name'
    session[:direction] = params[:direction].presence || session[:direction].presence || 'asc'
    
    # Groom params data
    regionsKVP = params.select { |key, value| key.to_s.start_with?('region_') }
    regions = Array.new
    regionsKVP.each {|key, value| regions << key.gsub(/region_/, '') }

    aresaKVP = params.select { |key, value| key.to_s.start_with?('AOI_') }
    areas = Array.new
    aresaKVP.each {|key, value| areas << key.gsub(/AOI_/, '') }

    session[:regions] = regions.presence || session[:regions].presence || Charity.uniq.pluck(:geographic_region)
    session[:areas] = areas.presence || session[:areas].presence || Charity.uniq.pluck(:area_of_impact)
    session[:overheadRadios] = params[:overheadRadios].presence || session[:overheadRadios].presence || '100'


    @charities = Charity.
      where(geographic_region: session[:regions], area_of_impact: session[:areas]).
      where("percent_of_overhead < ?", session[:overheadRadios]).
      order(session[:sort] + " " + session[:direction])

    @regions = Charity.uniq.pluck(:geographic_region)
    @areasOfImpact = Charity.uniq.pluck(:area_of_impact)
  end

  # GET /charities/1
  def show
    @reviews = nil;
    @reviews = Review.where(:charity_id => @charity.id).order(created_at: :desc)
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

    params.each_value do |param|
      if param == nil || param == ""
        flash[:error] = "Please fill in all fields"
        redirect_to new_charity_path
        return
      end
    end
    
    if Charity.exists?(params[:name])
      flash[:error] = "This Charity has already been created"
      redirect_to new_charity_path
      return
    end

    if Charity.exists?(:name => params[:name])
      flash[:error] = "Duplicate name"
      redirect_to new_charity_path
      return
    end

    @charity = Charity.create!(params)
    flash[:notice] = "#{@charity.name} was successfully created."
    redirect_to charities_path
  end

  # PATCH/PUT /charities/1
  def update
    if @charity.update_attributes(charity_params) #added word attributes for testing 
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
      params.require(:charity).permit(:name, :description, :filter_flags, :geographic_region, :area_of_impact, :percent_of_overhead, :religious_affiliation, :how_to_donate, :charity_homepage)
      #params[:charity]
    end
end
