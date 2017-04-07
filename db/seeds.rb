# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
person1 = Person.create(name: "Andy")
person2 = Person.create(name: "jack", master_id: person1.id)
person3 = Person.create(name: "James", master_id: person1.id)
person4 = Person.create(name: "hans", master_id: person2.id)
person5 = Person.create(name: "Smith", master_id: person3.id)