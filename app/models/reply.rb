class Reply < ApplicationRecord
  validates :sender, presence: true
  validates :body, presence: true

  belongs_to :email
end
