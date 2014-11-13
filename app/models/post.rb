class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :location
  validates :content, presence: true

  def self.query_location_and_category(location_query, category_query)
    where("location_id = ? and category_id = ?", location_query, category_query)
  end
end
