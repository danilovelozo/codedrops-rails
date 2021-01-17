# frozen_string_literal: true

# nodoc
class QrCode < ApplicationRecord
  def link?
    data.starts_with?('http')
  end
end
