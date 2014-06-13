class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.belongs_to :lesson
      t.string :name
      t.string :password
      t.string :lesson

      t.timestamps
    end
  end
end
