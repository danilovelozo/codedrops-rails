# frozen_string_literal: true

class PictureFile < ApplicationRecord
  after_destroy PictureFileCallbacks
end
