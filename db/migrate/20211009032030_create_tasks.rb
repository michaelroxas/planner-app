class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :task
      t.references :planner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
