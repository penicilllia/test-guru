class AddTestLevelDefault < ActiveRecord::Migration[5.2]
#  def change
#
#  end

  def up
    change_column_default :tests, :level, 1 
  end

  def down
    change_column_default :tests, :level, 1 
  end

end
