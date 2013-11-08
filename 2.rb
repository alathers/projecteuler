#!/usr/bin/ruby

cur=1
nex=2
tmp=3
fib=0
sum=0

while cur < 3999999
    if cur%2 == 0 
        sum=sum+cur
    end
    puts cur
    cur=nex
    nex=tmp
    tmp=cur+nex
end
puts
puts sum
