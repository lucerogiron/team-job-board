class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  def welcome
    "Hello, #{self.email}!"
  end
end
