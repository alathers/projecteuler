#!/usr/bin/ruby

### Swiped from on-line.  Need some help figuring out how it works.


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
