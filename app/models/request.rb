class Request < ApplicationRecord
  has_many :user_requests
  has_many :users, :through => :user_requests
end
