class User < ActiveRecord::Base
  has_many :posts

  has_many :spams
  has_many :spammed_posts, through: :spams, source: :post

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  def spam_post(post)
    spammed_posts.append(post)
  end

  def unspam_post(post)
    spammed_posts.delete post
  end
end
