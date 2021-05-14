class Person < ApplicationRecord
  enum country: [:brazil, :us, :india]
  enum favorite_color: [:red, :blue, :yellow]
end

