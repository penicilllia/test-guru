# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([ {title: 'Язык программирования'}, {title: 'Фреймворк'} ])
tests = Test.create([ {title: 'Ruby', level: 1, foreign_key: categories[0]}, {title: 'RoR', level: 2, foreign_key: categories[1]}, {title: "C++", level: 2, foreign_key: categories[0]}, {title: 'Ruby', level: 3, foreign_key: categories[0]} ])
questions = Question.create([ {body: "Под влиянием какого языка был создан Ruby?", foreign_key: tests[0]}, {body: "Как называется самый популярный фреймворк на Ruby?", foreign_key: tests[0]}, \
{body: "Назовите несколько серверов приложений для Rails.", foreign_key: tests[1]}, {body: "Назовите 4 парадигмы в ООП.", foreign_key: tests[0]}, {body: "В чем разница между import и include?", foreign_key: tests[2]}, {body: "Что такое векторы в С++?", foreign_key: tests[2]}])
answers = Answer.create([ {body: "Под влиянием Perl", foreign_key: questions[0]}, {body: "Ruby on Rails", foreign_key: questions[1]}, {body: "Puma, Unicorn, Passenger", foreign_key: questions[2]}, {body: "Абстракция, инкапсуляция, наследование, полиморфизм.", foreign_key: questions[3]}, \
{body: "include позволяет подключать один и тот же файл несколько раз, а import гарантирует, что препроцессор включает файл только один раз", foreign_key: questions[4]}, \
{body: "Это контейнеры для структур данных, которые представляют собой массивы, способные изменять свой размер", foreign_key: questions[5]} ])
users = User.create([ {name: "Ivan", email: "ivan@mail"}, {name: "Svets", email: "sveta@mail"}, {name: "Anton", email: "anton@mail"} ])
