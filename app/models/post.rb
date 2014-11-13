class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :location
  has_many :spams

  validates :content, presence: true
end
