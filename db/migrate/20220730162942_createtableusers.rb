class Createtableusers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :encrypted_password
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.datetime :created_at
      t.datetime :updated_at
      t.string :university
      t.integer :role
      t.string :libraries_id
      t.string :students_id

    
  end
end
end
