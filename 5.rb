#!/usr/bin/ruby

def range_divisible(x,y,z)
    (x..y).each do |i|
        if z%i != 0
            return false
        end
    end
    return true
end


h=20
prod=1
while h >= 1
    if prod%h != 0 
        prod=prod*h
    end
    h=h-1
end

h=2520*11
puts "max = #{prod}"
puts "starting #{h}"
while h < prod 
    if range_divisible(1,20,h)
        #puts h
        break
    end
    if h % 200000 == 0 
#        puts h
    end
    h=h+2520
end

puts h
