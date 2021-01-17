# frozen_string_literal: true

class User < ApplicationRecord

  has_many :articles, dependent: :destroy

  validates :login, :email, presence: true

  before_validation :ensure_login_has_value

  before_validation :normalize_name, on: :create

  after_validation :set_location, on: [ :create, :update ]

  before_create do
    self.name = login.capitalize if name.blank?
  end

  private

  def ensure_login_has_value
    if login.nil?
      self.login = email unless email.blank?
    end
  end

  def normalize_name
    self.name = name.downcase.titleize
  end

  def set_location
    self.location = LocationService.query(self)
  end
end
