class CreateQuizquestions < ActiveRecord::Migration
  def change
    create_table :quizquestions do |t|
      t.belongs_to :quiz 
      t.string :name
      t.integer :origin_id
      t.string :qtype

      t.timestamps
    end
  end
end
