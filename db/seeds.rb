3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
		)
end

puts "3 Topics created"

4.times do |blog|
	Blog.create!(
	  title: "My Blog Post #{blog}",
	  body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. d est laborum.",
	  topic_id: Topic.last.id
		)
end

puts "4 blog posts created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15,
		badge: "https://place-hold.it/200x150"
		)
end

puts "5 skills created"

3.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "Ruby on Rails",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit ollit anim id est laborum.",
		main_image: "https://place-hold.it/300x200",
		thumb_image: "https://place-hold.it/200x100"
		)
end

2.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "React",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
		main_image: "https://place-hold.it/250x150",
		thumb_image: "https://place-hold.it/150x100"
		)
end

puts "5 portfolio items created"

3.times do |technology|
	Portfolio.last.technologies.create!(
		name: "Technology #{technology}",
		)
end

puts "3 technologies created"