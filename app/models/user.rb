class User < ApplicationRecord
  def select_user_tests(test_level):
    user_tests.where(user.id :user_tests.user_id AND test_level :user_tests.test.level)
  end
end
