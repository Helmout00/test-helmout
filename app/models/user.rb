class User < ApplicationRecord
  #validate :nike, presence: true, uniqueness: true
  #has_secure_password
  has_and_belongs_to_many :games
end
