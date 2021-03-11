# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category1 = Category.create({ title: 'Язык программирования' })
category2 = Category.create({ title: 'Фреймворк' })

test1 = Test.create({ title: 'Ruby', level: 1, category_id: category1.id })
test2 = Test.create({ title: 'RoR', level: 2, category_id: category2.id })
test3 = Test.create({ title: "C++", level: 2, category_id: category1.id }) 

question1 = Question.create({ body: "Под влиянием какого языка был создан Ruby?", test_id: test1 })
question2 = Question.create({ body: "Как называется самый популярный фреймворк на Ruby?", test_id: test1 })
question3 = Question.create({ body: "Назовите несколько серверов приложений для Rails.",  test_id: test2 }) 
question4 = Question.create({ body: "Назовите 4 парадигмы в ООП.",  test_id: test3 })
question5 = Question.create({ body: "В чем разница между import и include?",  test_id: test3 }) 
question6 = Question.create({ body: "Что такое векторы в С++?",  test_id: test3 })

answer1 = Answer.create({ body: "Под влиянием Perl", question_id: question1 })
answer2 = Answer.create({ body: "Ruby on Rails", question_id: question2 })
answer3 = Answer.create({ body: "Puma, Unicorn, Passenger", question_id: question3 })
answer4 = Answer.create({ body: "Абстракция, инкапсуляция, наследование, полиморфизм.", question_id: question4 })
answer5 = Answer.create({ body: "include позволяет подключать один и тот же файл несколько раз, а import гарантирует, что препроцессор включает файл только один раз", question_id: question5 })
answer6 = Answer.create({ body: "Это контейнеры для структур данных, которые представляют собой массивы, способные изменять свой размер", question_id: question6 })

user1 = User.create({ name: "Ivan", email: "ivan@mail" })
user2 = User.create({ name: "Svets", email: "sveta@mail" })
user3 = User.create({ name: "Anton", email: "anton@mail" })

test1.users.push(user1)
user1.tests.push(test2)
user2.tests.push(test3)