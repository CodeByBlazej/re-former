class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  validates :email, confirmation: true, uniqueness: true, presence: true
  validates :email_confirmation, presence: true, if: :will_save_change_to_email?

  validates :password, presence: true, on: :create
  validates :password, confirmation: true, length: { in: 6..20 }, allow_blank: true
  validates :password_confirmation, presence: true, if: -> { password.present? }
end
