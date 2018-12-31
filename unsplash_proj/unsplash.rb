require 'pp'
require 'unsplash'

ACCESS_KEY = "57dec4c685fa3f2a9ff565e376244d18a016b26a6c8107e835e9e2212e01c5ec"
SECRET_KEY = "869844867ca66471da3ffaf8f385c5c7fd03c6d260add760efb3198c9e0ef143"

Unsplash.configure do |config|
  config.application_access_key = ACCESS_KEY
  config.application_secret = SECRET_KEY
  config.application_redirect_uri = "https://random_photo_to_spotify_song.com/oauth/callback"
  config.utm_source = "random_photo_to_spotify_song"
end

photo = Unsplash::Photo.find("tAKXap853rY")

# pp(photo.instance_methods)
# pp("=================================")
# pp(photo.inspect)
# puts(photo.pretty_inspect)

puts ("desc: #{photo.description}, width: #{photo.width}")
