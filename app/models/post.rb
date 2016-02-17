class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comment

	has_many :post_likes

	has_many :liked_posts, :through => :post_likes, :source => :user  #Question that have votes from the user 


	validates :title, :presence => true
	validates :subject, :presence => true
end
