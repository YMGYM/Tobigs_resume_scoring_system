class CreateResumes < ActiveRecord::Migration[6.0]
  def change
    create_table :resumes do |t|
        t.string :name
        t.string :city
        t.string :univ
        t.string :major
        t.string :gender
        t.string :military
        t.string :entryYear
        t.string :leftSem
        t.string :birth
        t.string :phone
        t.string :email
        t.string :python
        t.text :skills
        t.text :dataLecture
        t.text :activity
        t.text :question1
        t.text :question2
        t.text :question3
        t.text :question4
        t.text :question5
        t.text :interviewTime
        t.timestamps
    end
  end
end
