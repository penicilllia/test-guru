class UserTest < ApplicationRecord
  has_many :users
  has_many :tests
end
