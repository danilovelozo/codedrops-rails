# frozen_string_literal: true

class Order < ApplicationRecord
  before_save :normalize_card_number, if: :paid_with_card?

  def paid_with_card?
    # ...
  end
end
