class User < ApplicationRecord
  validate :nike, presence: true, uniqueness: true
  has_secure_password
end
