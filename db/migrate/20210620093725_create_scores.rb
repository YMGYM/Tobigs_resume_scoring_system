class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
        
        t.belongs_to :user
        t.belongs_to :resume
        t.float :score1
        t.float :score2
        t.float :score3
        t.float :score4
        
        t.timestamps
    end
  end
end
