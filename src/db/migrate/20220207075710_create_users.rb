class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :mail, null: false # 姓
      t.string :hashed_password # パスワード

      t.timestamps
    end
  end
end