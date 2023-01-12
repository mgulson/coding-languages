# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
default_languages = ['javascript', 'java', 'python','c','c++', 'ruby',
 'go', 'c#', 'typescript', 'sql', 'swift', 'rust', 'kotlin']

default_languages.each do | language|
  Language.create(name: language)
end
puts 'created default languages'