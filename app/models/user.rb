class User < ApplicationRecord
  validates :email, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :name, presence: true

  has_many :orders, dependent: :destroy
end
