class User < ApplicationRecord

  has_and_belongs_to_many :tests
  def tests_level(level)
    tests.where(level: level)
    
  end
end
