class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile, dependent: :destroy

  after_create :user_id_created

  private

  def user_id_created
   @pofile = Profile.new 
  self.profile.user_id = self.current_user.id
       self.profile.save
   
  end

end

#@pofile = @profile.user_id
 #  @pofile.save
#@comment = @post.comments.build(params[:comment])
#@comment.user_id = current_user.id
#@comment.save

 #   @pofile.user_id = current_user.id
 #   @user_id.save

 #self.post.last_commented_at = self.created_at
       #self.post.save