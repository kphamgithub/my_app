class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.belongs_to :lesson
      t.string :name
      t.timestamps
    end
  end
end
