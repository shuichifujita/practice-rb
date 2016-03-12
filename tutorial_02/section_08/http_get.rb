# coding: utf-8

# ******** ******** 8.9.4 ******** ******** #
puts " **** Leaning object oriented (http) **** "

require "net/http"
require "uri"

str_uri_1 = "http://www.ruby-lang.org/ja/"
str_uri_2 = "http://chaashuuu.com/"


url = URI.parse(str_uri_1)
http = Net::HTTP.start(url.host, url.port)
doc = http.get(url.path)
puts doc

# ******** ******** ******** ******** #
# *$$$$$$* *$****$* *$$$$*** ******** #
# *$****** *$$***$* *$***$** ******** #
# *$$$$*** *$*$**$* *$****$* ******** #
# *$****** *$**$*$* *$****$* ******** #
# *$****** *$***$$* *$***$** ******** #
# *$$$$$$* *$****$* *$$$$*** *$****** #
# ******** ******** ******** ******** #
puts " **** END **** "
