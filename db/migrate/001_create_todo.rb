class CreateTodo < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :content, null: false
      t.integer :status, null: false
      t.timestamps
    end
  end
end
