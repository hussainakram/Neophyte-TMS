# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
# Environment variables (ENV['...']) can be set in the file .env file.
User.last.where(name: "i2c", description: "One of the top software companies in Pakistan working on banking systems and problems regarding payments.", location: "04 Old FCC Ferozepur Rd, Lahore 54600", contact_no: "(042) 111 000 048", email: "connect@i2cinc.com", category: "Business", ceo: "Saleem ghori").first_or_create!
User.last.where(name: "NetSol Technologies", description: "ONetSol Technologies provides software solutions for asset finance, automotive finance, leasing management, lending, contract origination and activation.", location: "Main Ghazi Road, Lahore 54792", contact_no: " 1114 48800", email: "info@netsoltech.com", category: "Business", ceo: "Andrew Nicol").first_or_create!
Company.first.departments.where(name: 'Web Team', description: "The team that develops soft systems and solutions for business growth.").first_or_create!
Company.last.departments.where(name: 'HR Team', description: "The team that is managing our employees, providing and facilitating them.").first_or_create!
Department.first.projects.where(name: "e-banking system", description: "A solution to traditional banking system", category: "Banking System", start_date: DateTime.now).first_or_create!
Department.last.projects.where(name: "Tufla", description: "Game for kids which includes virtual reality and AI integration.", category: "Games", start_date: DateTime.now).first_or_create!
Project.first.challenges.where(name: "Introduction", description: "Get familiar with our company, go through from our website and read objectives and moto of the company you working in.", points: 10, category: "Non-technical", level: "Beginner", ).first_or_create!
Project.first.challenges.where(name: "Understand banking system", description: "Get familiar with existing banking system and try to think out of the box.", points: 15, category: "technical", level: "Initial", ).first_or_create!
Project.last.challenges.where(name: "Install Unity 2D on your system", description: "Get tutorials and try to make a simple game in unity 2D.", points: 20, category: "technical", level: "Initial", ).first_or_create!
Project.last.challenges.where(name: "Understand Graphic designing using Unity 3D", description: "In this challenge you are supposed to Understand the chemistry of graphics in any game you see.", points: 20, category: "technical", level: "medium", ).first_or_create!
Challenge.first.bugs.where(title: "Where to start first", description: "I'm confused where to start knowing this company and how many documents I need to read?", status: "closed").first_or_create!
Challenge.last.bugs.where(title: "What is Typography?", description: "I wanted to know the authetic explanation about Typography and how much it has importance in graphic designing.", status: "open").first_or_create!
Bug.first.solutions.where(description: "You need to just go through our website and read the files provided in resources box.", link: "http://www.i2cinc.com/").first_or_create!
Bug.last.solutions.where(description: "Typography is the art and technique of arranging type to make written language legible, readable, and appealing when displayed.", link: "https://practicaltypography.com/what-is-typography.html").first_or_create!
Project.first.quizzes.where(name: "First Quiz (Introduction)", time_allowed: "10 minutes", no_of_questions: 1, pass_score: 5).first_or_create!
Project.last.quizzes.where(name: "First Quiz (Introduction)", time_allowed: "10 minutes", no_of_questions: 1, pass_score: 5).first_or_create!
Quiz.first.questions.where(statement: "What is the moto of our company", option1: "Let's grow together", option2: "Let's innovate together", option3: "Let's build what's not been built", option4: "None").first_or_create!
Quiz.last.questions.where(statement: "What is the moto of our company", option1: "Not beatable, but reachable", option2: "Let's innovate together", option3: "Inspire Living", option4: "None").first_or_create!
User.first.quiz_attempts.where(earned_marks: 10, status: "pass", attempted_questions: 1, correct_answers: 1, time_taken: "9 mins", quiz_id: 1).first_or_create!
User.first.quiz_attempts.where(earned_marks: 8, status: "pass", attempted_questions: 1, correct_answers: 1, time_taken: "9 mins", quiz_id: 2).first_or_create!
puts "** All data has been uploaded to the database. **"
