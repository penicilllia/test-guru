class Test < ApplicationRecord

  def self.test_list(ctegory_name)
    test.where(category_name :category.name).reverse_order
  end
end
