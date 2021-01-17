# frozen_string_literal: true

# nodoc
class Post < ApplicationRecord
  validates :body, length: { minimum: 1, maximum: 280 }
end
