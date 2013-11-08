#!/usr/bin/ruby


def sum_of_squares (x,y)
   sum=0
   (x..y).each do |i|
        sum=sum+(i**2)
   end 
    return sum
end

def square_of_sums (x,y)
    sum=0
    (x..y).each do |i|
       sum=sum+i
    end
    return sum**2
end

puts square_of_sums(1,100)-sum_of_squares(1,100)
