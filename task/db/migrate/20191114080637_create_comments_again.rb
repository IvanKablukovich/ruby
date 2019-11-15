class CreateCommentsAgain < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :field
      t.text :username

      t.timestamps
    end
  end
end
