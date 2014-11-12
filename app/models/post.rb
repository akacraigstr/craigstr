class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  validates :content, presence: true
end
