class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :post_categories
end