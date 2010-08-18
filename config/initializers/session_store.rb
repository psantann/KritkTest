# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_KritkTest_session',
  :secret      => 'a7bd5f9c0ee0bb7842d14974ed99cacedf255c40b3e7a68207bdfc6fa5adab502eff80a4a0f5763e7552ff5418b09fc5a6fc78b43dc2ae726ae33d2b68e281db'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
