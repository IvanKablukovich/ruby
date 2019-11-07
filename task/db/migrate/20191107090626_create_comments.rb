class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.belongs_to :exercise
      t.text :field

      t.timestamps
    end
  end
end
