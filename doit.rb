#!/usr/bin/env ruby
require 'rubygems'
require 'rest_client'
require 'office'

p = RestClient.get 'http://www.mass.gov/qrmv/' + Office::NAME[0..7] + '.shtm'
/Licensing:\<\/div>The current wait time is:\<div class="time">(\d\d):(\d\d):(\d\d)/ =~ p
m = 60* $1.to_i() + $2.to_i()
RestClient.post 'http://rifgraf.heroku.com/graphs/dmv_' + Office::NAME, :value => m
