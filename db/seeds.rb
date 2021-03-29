# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
password = 'nimbus2000'
Wizard.create([
  { role: 'staff', names: 'Sorting', surname: 'Hat', email: 'sorting.hat@hogwarts.com', password: password, password_confirmation: password },
  { role: 'staff', names: 'Severus', surname: 'Snape', email: 'severus.snape@hogwarts.com', password: password, password_confirmation: password },
  { role: 'student', names: 'Cuthbert', surname: 'Binns', email: 'cuthbert.binns@hogwarts.com', password: password, password_confirmation: password },
  { role: 'student', names: 'Harry', surname: 'Potter', email: 'harry.potter@hogwarts.com', password: password, password_confirmation: password },
  { role: 'student', names: 'Draco', surname: 'Malfoy', email: 'draco.malfoy@hogwarts.com', password: password, password_confirmation: password },
])

House.create([
  { name: 'Gryffindor' },
  { name: 'Hufflepuff' },
  { name: 'Ravenclaw' },
  { name: 'Slytherin' }
])