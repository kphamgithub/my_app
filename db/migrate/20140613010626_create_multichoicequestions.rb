class CreateMultichoicequestions < ActiveRecord::Migration
  def change
    create_table :multichoicequestions do |t|
      t.string :name
      t.string :question
      t.string :choice1
      t.string :choice2
      t.string :choice3
      t.string :answer

      t.timestamps
    end
  end
end
