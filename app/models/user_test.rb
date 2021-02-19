class UserTest < ApplicationRecord
  has_many :users, :class_name => "User"
  has_many :tests, :class_name => "Test"
end
