class Post < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 4 }
  validates :body, presence: true

  has_many :comments, dependent: :destroy
end
