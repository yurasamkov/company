class ProfilesController < ApplicationController
	
	respond_to :html

  def index
   
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new
  end

  def edit
  end

  def create
   @profile = Profile.new(profile_params)
    if @profile.save
    else
      render 'new'
    end
  end

  def update
    
  end

  def destroy
   
  end


  private

    def profile_params
      params.require(:profile).permit(:phone, :city, :country, :birth_date,
                                      :profession, :education, :image)
    end
end

