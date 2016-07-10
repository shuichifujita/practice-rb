# http

require "open-uri"

open("https://rubygems.org") do |io|
  puts io.read
end