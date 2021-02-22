class User < ApplicationRecord
  def select_user_tests(test_level)
    users.where("level = test_level AND user_id = test_id")
  end
end
