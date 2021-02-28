class RemoveTableUserTests < ActiveRecord::Migration[5.2]
  def change
    def up
      drop_table :user_tests
    end

    def down
      
    end
  end
end
