class CreateFillquestions < ActiveRecord::Migration
  def change
    create_table :fillquestions do |t|
      t.string :name
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end
