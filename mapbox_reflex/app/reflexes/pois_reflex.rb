# frozen_string_literal: true

# nodoc
class PoisReflex < ApplicationReflex
  def add(name)
    Poi.create(name: name)
  end
end
