class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :description
      t.boolean :state
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
