# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tests = Test.create([ {title: 'Ruby', level: 1}, {title: 'RoR', level: 2}, {title: 'C', level: 2}, {title: 'Ruby', level: 3} ])
categories = Category.create([ {title: 'Язык программирования'}, {title: 'Фреймворк'} ])
questions = Question.create([ {body: "Под влиянием какого языка был создан Ruby?"}, {body: "Как называется самый популярный фреймворк на Ruby?"}, \
{body: "Назовите несколько серверов приложений для Rails."}, {body: "Назовите 4 парадигмы в ООП."}, {body: "В чем разница между import и include?"}, {body: "Что такое векторы в С++?"}])
answers = Answer.create([ {body: "Под влиянием Perl"}, {body: "Ruby on Rails"}, {body: "Puma, Unicorn, Passenger"}, {body: "Абстракция, инкапсуляция, наследование, полиморфизм."}, \
{body: "include позволяет подключать один и тот же файл несколько раз, а import гарантирует, что препроцессор включает файл только один раз"}, \
{body: "Это контейнеры для структур данных, которые представляют собой массивы, способные изменять свой размер"} ])
users = User.create([ {name: "Ivan", email: "ivan@mail"}, {name: "Svets", email: "sveta@mail"}, {name: "Anton", email: "anton@mail"} ])
