class Comment < ActiveRecord::Base
  belongs_to :post, foreign_key: :user_id
  belongs_to :user, foreign_key: :user_id
end