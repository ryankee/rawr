#!/usr/bin/env ruby
require 'ruby-growl'
require 'trollop'

parser = Trollop::Parser.new do
  version "Rawr 0.0.1 (c) 2011 Ryan Kee"
  opt :title, "Set the title", :short => "t", :type => String
end

opts = Trollop::with_standard_exception_handling parser do
  options = parser.parse ARGV
  raise Trollop::HelpNeeded if ARGV.empty?
  options
end

growl = Growl.new "127.0.0.1", "rawr", ["rawr Notification"]
argument = ARGV.join(' ')
title = opts[:title_given] ? "#{argument}: #{opts[:title]}" : argument
output = %x[#{argument}]
growl.notify "rawr Notification", title, output.to_s