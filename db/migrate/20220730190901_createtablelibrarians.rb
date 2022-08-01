class Createtablelibrarians < ActiveRecord::Migration[7.0]
  def change
    create_table :librarians do |t|
      t.string :email
      t.string :name
      t.string :password
      t.string :library
      t.datetime :created_at
      t.datetime :updated_at
      t.string :users_id
      t.string :libraries_id
      t.boolean :approved
  end
end
end
