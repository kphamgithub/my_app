class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.belongs_to :lesson
      t.string :title
      t.text :note

      t.timestamps
    end
  end
end
