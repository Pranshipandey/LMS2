class Createtablelibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :libraries do |t|
      t.string :name
      t.string :university
      t.string :location
      t.integer :max_days
      t.float :fines
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :books_id
      t.string :users_id

     
  end
end
end
