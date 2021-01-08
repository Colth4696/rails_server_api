class User < ApplicationRecord
  has_many :user_requests
  has_many :requests, :through => :user_requests

  has_secure_password

validates :first_name, presence: true
validates :last_name, presence: true
validates :email, presence: true
validates :email, uniqueness: true
validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end