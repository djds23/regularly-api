# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

['Luis', 'Liz', 'Joe', 'Victoria', 'Ryan', 'Ingamar', 'Dean'].each_with_index do |name, index|
  user = User.find_or_create_by!(
    username: "#{name}-#{index}"
  )
  user_edge = UserEdge.find_or_create_by!(
    user: user,
    edge: index
  )
end

