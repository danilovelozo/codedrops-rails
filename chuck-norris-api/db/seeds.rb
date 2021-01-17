# frozen_string_literal: true

require 'faker'

100.times do
  Joke.create(
    content: Faker::ChuckNorris.fact
  )
end
