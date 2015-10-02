class Profile < ActiveRecord::Base
	belongs_to :user

   
private

def create
    @user = User.new(user_params)
    if @user.save
        @profile = Profile.create
        @profile.user_id = @user.id
        @profile.save
        redirect_to root_url, :notice => "You have succesfully signed up!"
    else
        render "new"
    end

end
