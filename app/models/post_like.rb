class PostLike < ActiveRecord::Base
	belongs_to :user
	belongs_to :post
    validates :post, uniqueness: { scope: :post,
    message: "User is unable to vote for more than 2 types" }
end
