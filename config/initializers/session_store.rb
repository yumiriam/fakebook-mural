# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fakebook_session',
  :secret      => '1eaf2af70078558f57809dd1186fc3b9ee99a4ae87de4c41b7a9b71e5f6aa541997c3f4e91c089ea0a9739e42be2388b2ab74cb4a0478f5926bb6edaac386d90'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
