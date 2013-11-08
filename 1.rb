#!/usr/bin/ruby

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

