class AddReturnToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :return, :boolean
  end
end
