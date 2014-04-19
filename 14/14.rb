#!/usr/bin/ruby

=begin
Adam Lathers
alathers@gmail.com

Longest Collatz sequence
Problem 14

The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:
13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.

=end

require '../lib-ruby/myInteger.rb'

limit=ARGV.shift || 1000000

maxchain=[]
mychain=[]

#puts limit
maxchainLength=0
(1..limit).each do |test|
    curchainLength=test.collatzChain.length
    maxchainLength=test,curchainLength if curchainLength > maxchainLength[1]
    print " . " if (test % 25000).zero?  # Just to make sure we see progress 
    puts "\n #{test}" if (test % 100000).zero?  #Linebreak  :)
end
puts maxchainLength
