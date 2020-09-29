class AddIndex < ActiveRecord::Migration[6.0]
  def change
    add_index :books, [:user_id, :created_on], unique: true
  end
end
