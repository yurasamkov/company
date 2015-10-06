class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile, dependent: :destroy

  after_create :user_id_created

  private

  def user_id_created
<<<<<<< HEAD
   @profile = Profile.new 
   @profile.user_id = self.id  
   @profile.save
=======
    @profile = Profile.new 
    @profile.user_id = self.id  
    @profile.save
>>>>>>> a36a106f84c6af4f084162007558836df5d28536
   
  end

end
