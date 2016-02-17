class User < ActiveRecord::Base
	has_secure_password

	has_many :posts, :dependent => :destroy
	has_many :comments, :dependent => :destroy

	has_many :post_likes, :dependent => :destroy
	has_many :comment_likes, :dependent => :destroy

	has_many :liked_posts, :through => :post_likes, :source => :post  #Will get the votes/likes
	has_many :liked_comments, :through => :comment_likes, :source => :comment  #Will get the votes/likes

	validates :user_name, :presence => true
	validates :email, :presence => true,
	        :format =>  { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/ },
	        :uniqueness => { :case_sensitive => false }

	def self.authenticate(email,password)
		@user = User.find_by(email: email)

		if @user && @user.authenticate(password) # means the user email is found in database, and the password is authenticated
			@user
		else
			return false
		end
	end # END OF self.authenticate

	def user_liked_for_posts?(post) 
		# Check (when current user posted) --> return false if user try to post answer
		#post.user == self
		 post && post.user != self && !post_likes.exists?(post_id: post.id)
	end

	def validate_post_like(user,post)
	if user.id == post.user.id
	 return true
	else
	 return false 
	end
	end

end
