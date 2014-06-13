class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.belongs_to :matchquestion
      t.string :name
      t.string :match
      t.string :answer

      t.timestamps
    end
  end
end
