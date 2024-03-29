# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

	10.times do |i|
		Blog.create!(
		title: "my title no. #{i}",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
	end

	puts "10 blogs created"


	6.times do |s|
		Skill.create!(
			title: "my skill no. #{s}",
			percentile: "#{s*12}"
			)
	end

	puts "6 skills created"

	9.times do |p|
		Portfolio.create!(
			title: "my portfolio no. #{p}",
			subtitle: "this is my subtitle no. #{p}",
			body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
			main_image: "https://placekitten.com/500/400",
			thumb_image:"https://placekitten.com/300/200"

			)
	end

	puts "9 portfolios created"