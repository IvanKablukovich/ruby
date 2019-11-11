class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.belongs_to :user
      t.string :subject
      t.string :assignee
      t.string :status
      t.text :description
      t.string :created_by

      t.timestamps
    end
  end
end
