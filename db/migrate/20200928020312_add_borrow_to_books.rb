class AddBorrowToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :borrow, :boolean
  end
end
