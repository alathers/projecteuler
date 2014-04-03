#!/usr/bin/ruby

### Swiped from on-line.  Need some help figuring out how it works.
=begin
Summation of primes
Problem 10

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
=end
require '../lib-ruby/prime.rb'

# O(n^2) sadness.  
sum=0
(2..2000000).each do |test| # Exclude 1 since it's abnormal
    if (isPrimeBruterForce test)[0]
        sum+=test
    end
end

puts sum

=begin
ABYSMAL RUNTIME    
142913828923

real    0m19.446s
user    0m19.422s
sys 0m0.022s

=end



=begin
# Generates a list of primes below a given value
def primelist(n)
    k = 1
    a = [2,3]
    while 6*k < n
        a.push(6*k-1)
        a.push(6*k+1)
        k += 1
    end
    count = 0
    y = a[count]
    while y < (n**(0.5))
        a.collect!{|x| x if x % y != 0 or x == y}.compact!
        count += 1
        y = a[count]
    end
    a
end

def runner(type)
    #puts "#{type}:\n"
    ti = Time.now
    #puts "Start time: #{ti}\n"
    yield
    tf = Time.now
    #puts "End time: #{tf}\n"
    puts "Difference in time: #{tf-ti}\n"
end

runner("Hand-rolled") {puts primelist(2000000).inject{|sum,a| sum += a}}


142913828922
Difference in time: 4.468288

real    0m4.505s
user    0m4.488s
sys 0m0.014s

=end