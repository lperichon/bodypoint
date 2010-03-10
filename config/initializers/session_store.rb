# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bodypoint_session',
  :secret      => 'd6924c221338c03e9eaecc7b39ea3d5dccf401345d5404896eed0939bd718c6a19271cc881afef75c64100481ea26f5db1bb6a87b94c7b72866ea77dc1691c6d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
ActionController::Base.session_store = :active_record_store
