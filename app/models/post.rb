class Post < ApplicationRecord
  belongs_to :stamp
  belongs_to :user

  validates :text, presence: true
  has_many :comments

  def self.search(search)
    if search
     Post.where('content LIKE(?)', "%#{search}%")
    else
     Post.all
    end
  end
end
