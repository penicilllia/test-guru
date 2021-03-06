class Test < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :users

  def self.category_list(category_name)
    joins(:category).where('categories.title like ?', category_name).order(title: :desc).pluck(:title)
  end
end
