#!/usr/bin/env ruby

def hello(what)
    puts "hello #{what}"
end

trap "TERM" do
    puts "Terminating"
    puts "..."
    exit
end

while what = gets
    hello what
end
  