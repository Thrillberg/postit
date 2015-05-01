class Comment < ActiveRecord::Base
  include VoteableEricApril

  belongs_to :post
  belongs_to :user

  validates :body, presence: true
  
end