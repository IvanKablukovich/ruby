class Addingcolumn < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :username, :string
  end
end
