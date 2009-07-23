#!/usr/bin/env ruby
require 'rubygems'
require 'rest_client'
require 'office'

pat = /Licensing:\<\/div>The current wait time is:\<div class="time">(\d\d):(\d\d):(\d\d)/
p = RestClient.get 'http://www.mass.gov/qrmv/' + Office::NAME[0..7] + '.shtm'
if pat  =~ p then
  m = 60* $1.to_i() + $2.to_i()
#  print m, "\n"
  RestClient.post 'http://rifgraf.heroku.com/graphs/dmv_' + Office::NAME, :value => m
else
#  print "no match\n"
end
