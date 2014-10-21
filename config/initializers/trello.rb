require 'trello'

Trello.configure do |config|
  config.developer_public_key = "dd130d7e1a746477c3a80efecaf59fe1"
  config.member_token = "558872c62a449860fb85325cf04c1d1acdc9fda213908512c15cc037510d9ff5"
end

# Get developer API key:

# https://trello.com/1/appKey/generate
# Get user token:

# https://trello.com/1/connect?key=$YOUR_API_KEY&name=trello-client.rb&response_type=token
