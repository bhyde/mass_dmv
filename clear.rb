#!/usr/bin/env ruby
require 'rubygems'
require 'rest_client'
require 'office'
RestClient.delete 'http://rifgraf.heroku.com/graphs/dmv_' + Office::NAME
