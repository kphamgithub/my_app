class CreateLessonVocas < ActiveRecord::Migration
  def change
    create_table :lesson_vocas do |t|
      t.integer :lesson_id
      t.integer :vocabulary_id

      t.timestamps
    end
  end
end
