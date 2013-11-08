#!/usr/bin/ruby

require 'rubygems'
require "is_prime"
i=2
#(2..10000000).each do |h|
h=3
while h < 100000000000
    if h.prime?
        puts "#{h} #{i}"
        if i == 10001
            puts h
            break
        end
        i=i+1
    end    
    h=h+2
end 
