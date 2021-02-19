class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.belongs_to :user_tests, index: true, foreign_key: true
      t.string :title, null: false
      t.integer :level, default: 1
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
