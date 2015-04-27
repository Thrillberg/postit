class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :votes, as: :voteable

  validates :body, presence: true

  def total_votes
    self.up_votes - self.down_votes
  end

  def up_votes
    self.votes.where(votes: true).size
  end

  def down_votes
    self.votes.where(votes: false).size
  end
  
end