class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  paginates_per 24

end
