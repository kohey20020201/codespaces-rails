class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.text :content
      t.string :due_date

      t.timestamps
    end
  end
end
