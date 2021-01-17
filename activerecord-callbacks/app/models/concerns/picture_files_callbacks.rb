# frozen_string_literal: true

module PictureFileCallbacks
  def self.after_destroy(picture_file)
    File.delete(picture_file.filepath) if File.exist?(picture_file.filepath)
  end
end
