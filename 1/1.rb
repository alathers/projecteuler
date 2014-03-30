#!/usr/bin/ruby

=begin
Adam Lathers
alathers@gmail.com



Multiples of 3 and 5
Problem 1

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.    
=end

sum=0
(0..999).each do |testval|
    if testval % 3 == 0 || testval % 5 == 0 
        sum += testval
    end       
end
puts sum


=begin

This was my original solution as, I think the very first lines of Ruby I ever wrote.

h=0
x=0
until h == 999 do 
    h=h+1
    if h%3 == 0 
        x=x+h
        puts h
        puts x
    elsif h%5 == 0 
        x=x+h
        puts h
        puts x
    end
    puts
end
puts x

=end