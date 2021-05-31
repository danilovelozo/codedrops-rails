Split.configure do |config|
  # config.allow_multiple_experiments = true
  # config.redis = Redis.new

  # Persist results on Cookies

  config.persistence = :cookie
  config.persistence_cookie_length = 2_592_000 # 30 days

  # Secure Dashboard

  # Split::Dashboard.use Rack::Auth::Basic do |username, password|
  #   ActiveSupport::SecurityUtils.secure_compare(
  #     ::Digest::SHA256.hexdigest(username),
  #     ::Digest::SHA256.hexdigest(ENV.fetch("SPLIT_USERNAME"))
  #   ) & ActiveSupport::SecurityUtils.secure_compare(
  #     ::Digest::SHA256.hexdigest(password),
  #     ::Digest::SHA256.hexdigest(ENV.fetch("SPLIT_PASSWORD"))
  #   )
  # end
end
