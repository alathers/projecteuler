#!/usr/bin/ruby

=begin
Adam Lathers
alathers@gmail.com

Largest prime factor
Problem 3

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

  
=end
require '../lib-ruby/prime.rb'

boundVal=600851475143
factors=Array.new
tester=isPrimeBruterForce boundVal
while tester[0] == false do 
    factors.push tester[1]
    boundVal=boundVal/tester[1]
    tester=Array.new isPrimeBruterForce boundVal 
#    puts tester 
end
#puts tester[1]
#puts factors.max
# Once the loop is escaped, the remaining boundVal is the largest factor
puts boundVal

=begin
    
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

=end