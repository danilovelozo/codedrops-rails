# frozen_string_literal: true

@response = Faraday.get 'https://jsonplaceholder.typicode.com/posts'
post_data = JSON.parse(@response.body)

post_data.each do |post|
  Post.create!(
    title: post['body'],
    content: post['title']
  )
end

puts 'Done!'
