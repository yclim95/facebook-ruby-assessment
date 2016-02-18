class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :post
	has_many :comment_likes
	
	has_many :liked_comments, :through => :comment_likes, :source => :user  #Question that have votes from the user 

	validates :text, :presence => true
end
