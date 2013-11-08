#!/usr/bin/ruby

y=999
max=0
while y > 0
    x=999
while x > 0
    prod=x*y
    if prod.to_s == prod.to_s.reverse
        #puts prod
        #puts x
        #puts y
        if prod > max
            max = prod
        end
    end
    x=x-1
end
y=y-1
end
puts max
