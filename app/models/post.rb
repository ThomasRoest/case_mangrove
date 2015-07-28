class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  paginates_per 24

  default_scope -> { order('created_at DESC') }
end
