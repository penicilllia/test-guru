class Test < ApplicationRecord

  def self.test_list(ctegory_name)
    tests.where(category_name :category.name).order('id DESC')
  end
end
