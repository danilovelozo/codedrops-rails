require 'faraday'
require 'oj'

client = Faraday.new(url: 'http://localhost:3000') do
  _1.adapter Faraday.default_adapter
  config.token_auth('127a74dbec6f156401b236d6cb32db0d')
end

create_users = client.post do
  _1.url '/api/v1/users'
  _1.headers['Content-Type'] = 'application/json'
  _1.body = '{ "user": {"name": "test user"} }'
end

create_posts = client.post do
  _1.url '/api/v1/posts'
  _1.headers['Content-Type'] = 'application/json'
  _1.body = '{ "post": {"title": "Title", "body": "Text"} }'
end

delete_posts = client.delete do
  _1.url = '/api/v1/posts/1'
  _1.headers['Content-Type'] = 'application/json'
end

puts Oj.load(users)
puts users.status
