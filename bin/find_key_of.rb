#!/usr/bin/env ruby
require './libs'

video_id = ARGV.first
video_filename = Context.instance.video_service.download video_id
key = Context.instance.key_finder.find video_filename
puts "Result key: #{key}\n"
