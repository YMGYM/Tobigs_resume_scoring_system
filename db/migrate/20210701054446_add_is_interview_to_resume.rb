class AddIsInterviewToResume < ActiveRecord::Migration[6.0]
  def change
    add_column :resumes, :isInterview, :boolean
  end
end
