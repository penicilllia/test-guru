class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.belongs_to :user_tests, index: true, foreign_key: true
      t.string :name, null: false
      t.string :email, null: false
      t.references :test, foreign_key: true

      t.timestamps
    end
  end
end
