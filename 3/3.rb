#!/usr/bin/ruby

require 'rubygems'
require "is_prime"

val=600851475143
h=2
while h < val 
    if h.prime? 
       if h < val
            while val%h == 0 
                val=val/h
            end
       end 
    end
    h=h+1
end
puts h
