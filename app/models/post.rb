class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :votes, as: :voteable

  before_save :generate_slug

  validates :title, presence: true, length: {minimum: 5}
  validates :description, presence: true
  validates :url, presence: true, uniqueness: true

  def total_votes
    up_votes - down_votes
  end

  def up_votes
    votes.where(votes:true).size
  end

  def down_votes
    votes.where(votes:false).size
  end

  def generate_slug
    self.slug = self.title.gsub(' ','-').downcase
  end

  def to_param
    self.slug
  end

end