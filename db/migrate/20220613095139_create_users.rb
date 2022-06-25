class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username, null: false # <= constraints
      t.string :email,  null: false # <= constraints
      t.text :password, null: false # <= constraints
      t.text :token

      t.timestamps
    end
  end
end
