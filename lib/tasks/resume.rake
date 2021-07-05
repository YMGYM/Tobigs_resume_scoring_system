require 'csv'

namespace :resume do
  desc "TODO"
  task insert_resume: :environment do
    csv_text = File.read(Rails.root.join('resume', '16_resumes.csv'))
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
      t.interviewTime = row['ingerviewTime']
      t.save
     end

    puts "There are now #{Resume.count} rows in the transactions table"
  end

  desc "TODO"
  task insertInterview: :environment do
    arr = [ 34,   3,  38, 172, 227,  27,  61, 161,  76, 275,  40, 203, 145,
       270, 224, 197, 146, 234, 210,  11, 246, 100,   0,  98,  74,  42,
       181,  96, 201, 140, 138,  43, 265,  60, 109, 149, 198, 250, 280,
        95,  89, 157, 152, 263, 287,  58, 189,  36, 133, 150,  19, 205,
        52,  39, 170, 107, 253, 166, 260, 116, 162, 164, 297, 199, 155,
       120, 129, 241, 182, 306,  45, 200, 112,   7, 141, 165, 245, 185,
       206, 214, 215, 193,  32, 160]
     
     arr2 = []
     arr.each {|a| arr2.append(a+1)}
     
     Resume.all.each {|r| r.update(isInterview: true) if arr2.include?(r.id)}
     
    puts "update finish"
  end
end
