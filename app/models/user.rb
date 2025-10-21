class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  validates :email, confirmation: true, uniqueness: true
  validates :email_confirmation, presence: true

  validates :password, confirmation: true, length: { in: 6..20 }
  validates :password_confirmation, presence: true
end
