class Email < ApplicationRecord
  validates :sender, presence: true
  validates :reciver, presence: true
  validates :subject, presence: true
  validates :body, presence: true

  belongs_to :user
end
