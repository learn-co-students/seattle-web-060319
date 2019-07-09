class User < ApplicationRecord
  validates :username, presence: true
  validates :username, length: { in: 5..25 }
  validates :username, uniqueness: true

  has_secure_password
end
