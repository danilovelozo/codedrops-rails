# frozen_string_literal: true

# nodoc
module ApplicationCable
  # nodoc
  class Connection < ActionCable::Connection::Base
    identified_by :session_id

    def connect
      self.session_id = request.session.id
    end
  end
end
