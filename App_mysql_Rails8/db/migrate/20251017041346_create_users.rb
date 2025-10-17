class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.boolean :programador
      t.date :birthday
      t.time :work_time
      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
