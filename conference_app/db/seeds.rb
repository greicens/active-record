# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'ffaker'
p "Hello from seeds.rb"

FFaker::Name
FFaker::Internet.email

speakers_data = [
    {:first=>"Ryan", :last=>"Thomas", :email=>"rt@example.com"},
    {:first=>"Zach", :last=>"Cusimano", :email=>"zc@example.com"},
    {:first=>"Ricardo", :last=>"Arellano", :email=>"ra@example.com"}
]

(1..10).each do |speaker|
  speakers_data.push({:first=>FFaker::Name.first_name, :email=>FFaker::Internet.email})
end
Speaker.delete_all
Speaker.create(speakers_data)
