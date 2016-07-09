# Be sure to restart your server when you modify this file.

options = {
  key: "_twist_session"
}

case Rails.env
when "development", "test"
  options.merge!(domain: "lvh.me")
when "production"
  # TBA
end

Twist::Application.config.session_store :cookie_store, options

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# Twist::Application.config.session_store :active_record_store
