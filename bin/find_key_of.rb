#!/usr/bin/env ruby
require './libs'

video_hash = ARGV.first
key = CONTEXT.key_finder.key_of(video_hash)

puts "Key of '#{video_hash}' youtube video hash is: #{key}\n"
