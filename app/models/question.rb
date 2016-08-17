class Question < ActiveRecord::Base
  has_many :answers, dependent: :destroy

  validates :title, :body, presence: true
  validates :title, length: { maximum: 255 }
  validates :title, :body, length: { minimum: 10 }
end
