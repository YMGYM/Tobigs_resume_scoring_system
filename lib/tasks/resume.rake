require 'csv'

namespace :resume do
  desc "TODO"
  task insert_resume: :environment do
    csv_text = File.read(Rails.root.join('resume', 'resumes.csv'))
    csv = CSV.parse(csv_text, :headers => true, :encoding => 'UTF-32BE:UTF-8')
    csv.each do |row|
      t = Resume.new
      t.name = row['name']
      t.city = row['city']
      t.univ = row['univ']
      t.major = row['major']
      t.gender = row['gender']
      t.military = row['military']
      t.entryYear = row['entryYear']
      t.leftSem = row['leftSem']
      t.birth = row['birth']
      t.phone = row['phone']
      t.email = row['email']
      t.python = row['python']
      t.skills = row['skills']
      t.dataLecture = row['dataLecture']
      t.activity = row['activity']
      t.question1 = row['question1']
      t.question2 = row['question2']
      t.question3 = row['question3']
      t.question4 = row['question4']
      t.question5 = row['question5']
      t.interviewTime = row['interviewTime']
      t.save
     end

    puts "There are now #{Resume.count} rows in the transactions table"
  end

end
