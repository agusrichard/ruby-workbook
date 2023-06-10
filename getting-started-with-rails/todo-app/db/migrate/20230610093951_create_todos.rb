class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.datetime :time
      t.text :body

      t.timestamps
    end
  end
end
